class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:update, :destroy]

  # GET /complaints
  def index
    #@complaints = Complaint.where(interaction_id: Interaction.where("status<?",2))
    @complaints = Complaint.where("complaint_status<?",2)
    @complaints.each do |complaint|
      if complaint.complaint_articles.present?
        complaint.refund_type = complaint.complaint_articles.first.action_type
      end

      total_reclam = 0
      complaint.complaint_articles.each do |article|
        if article.action_amount.present?
          total_reclam = total_reclam + article.action_amount
        end
      end
      complaint.total_reclam = total_reclam

      result = FicheClient.execute_procedure "p_ficheclient", complaint.interaction.ct_num
      fiche_client = result[0]
      complaint.client_name = fiche_client['CT_Nom'].to_s + " " + fiche_client['CT_Prenom'].to_s
    end
    # @interactions = Interaction.where(do_piece: "").where("status<?",2)
    # @interactions.each do |interaction|
    #   result = FicheClient.execute_procedure "p_ficheclient", interaction.ct_num
    #   fiche_client = result[0]
    #   interaction.client_name = fiche_client['CT_Nom'].to_s + " " + fiche_client['CT_Prenom'].to_s
    # end
  end

  # GET /complaints/1
  def show
    complaint = Complaint.find_by(id: params[:id])
    if complaint.blank?
      redirect_to complaints_path
      return
    end
    interaction = Interaction.find(complaint.interaction.id)
    result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
    contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type
    answers = { favorable: complaint.complaint_answers.where(opinion: 'favorable') + complaint.complaint_free_answers.where(opinion: 0),
                partagee: complaint.complaint_answers.where(opinion: 'partagee') + complaint.complaint_free_answers.where(opinion: 1),
                defavorable: complaint.complaint_answers.where(opinion: 'defavorable') + complaint.complaint_free_answers.where(opinion: 2) }

    total_commande = 0
    total_reclam = 0
    complaint.complaint_articles.each do |article|
      total_commande = total_commande + article.DL_MontantTTC
      if article.number_selected.present? && article.number_selected > 0
        if article.DL_QTE.present?
          total_reclam = total_reclam + (article.DL_MontantTTC / article.DL_QTE * article.number_selected)
        else
          total_reclam = total_reclam + article.DL_MontantTTC
        end
      end
    end
    if total_commande != 0
      pourcentage_reclam = total_reclam * (100 / total_commande)
    else
      pourcentage_reclam = 0
    end

    @variables = { complaint: complaint, detail_commande: result[0], contenu_commande: contenu_commande, answers: answers,
                   total_commande: total_commande, pourcentage_reclam: pourcentage_reclam }
    @params = { search: params[:search] }
  end

  # GET /complaints/new
  def new
    complaint = Complaint.new
    complaint.interaction_id = params[:interaction_id]
    interaction = Interaction.find(params[:interaction_id])
    interactions = Interaction.where(ct_num: interaction.ct_num)
    complaint.kind = interaction.object

    result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
    contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type
    @variables = { complaint: complaint, detail_commande: result[0], contenu_commande: contenu_commande, interactions: interactions}
    @params = { search: params[:search] }
  end

  # GET /complaints/1/edit
  def edit
    complaint = Complaint.find(params[:id])
    interaction = Interaction.find(complaint.interaction.id)
    interactions = Interaction.where(ct_num: interaction.ct_num)

    result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
    contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type
    @variables = { complaint: complaint, detail_commande: result[0], contenu_commande: contenu_commande, interactions: interactions }
    @params = { search: params[:search] }
  end

  # POST /complaints
  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      interaction = Interaction.find(@complaint.interaction.id)
      contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type

      contenu_commande.sort_by {|e| e[:AR_Ref]}.each do |article|
        article_to_add = ComplaintArticle.new(article)
        article_to_add.number_selected = params[:complaint]["number_selected_#{article_to_add.AR_Ref}"]
        if article_to_add.save!
          @complaint.complaint_articles << article_to_add
        end
      end

      redirect_to form_second_complaint_path(@complaint, search: params[:complaint][:search])
    else
      render :new
    end
  end

  # PATCH/PUT /complaints/1
  def update
    if @complaint.update(complaint_params)
      @complaint.complaint_articles.each do |article|
        article.number_selected = params[:complaint]["number_selected_#{article.AR_Ref}"]
        article.save
      end
      redirect_to form_second_complaint_path(@complaint, search: params[:complaint][:search])
    else
      render :edit
    end
  end

  # DELETE /complaints/1
  def destroy
    interaction = @complaint.interaction
    @complaint.destroy
    redirect_to interaction_path(interaction, search: params[:search])
  end

  def form_second
    complaint = Complaint.find(params[:id])
    interaction = Interaction.find(complaint.interaction.id)
    interactions = Interaction.where(ct_num: interaction.ct_num)

    result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
    contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type
    @variables = { complaint: complaint, detail_commande: result[0], contenu_commande: contenu_commande, interactions: interactions }
    @params = { search: params[:search] }
  end

  def form_second_submit
    @complaint = Complaint.find(params[:id])

    if params[:complaint].present?
      i = 1
      answers = []
      input_answers = []
      while !params[:complaint]["complaint_answer_#{i}"].nil?
        answer = ComplaintAnswer.find(params[:complaint]["complaint_answer_#{i}"])
        answers << answer
        if params[:complaint]["complaint_answer_input_#{i}"].present?
          input_answer = ComplaintFreeAnswer.new(answer_id: "complaint_answer_input_#{i}",
                                                 text: params[:complaint]["complaint_answer_input_#{i}"],
                                                 opinion: answer.opinion)
          if input_answer.save!
            input_answers << input_answer
          end
        end
        i = i + 1
      end

      puts(input_answers).inspect
      @complaint.complaint_free_answers.delete_all
      @complaint.complaint_free_answers << input_answers
      @complaint.complaint_answers.delete_all
      @complaint.complaint_answers << answers
    end

    redirect_to form_third_complaint_path(@complaint, search: params[:complaint][:search])
  end

  def form_third
    complaint = Complaint.find(params[:id])
    interaction = Interaction.find(complaint.interaction.id)
    interactions = Interaction.where(ct_num: interaction.ct_num)

    result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
    contenu_commande = DetailCommande.execute_procedure "p_contenu_commande", interaction.do_piece, interaction.do_type
    answers = { favorable: complaint.complaint_answers.where(opinion: 'favorable') + complaint.complaint_free_answers.where(opinion: 0),
                 partagee: complaint.complaint_answers.where(opinion: 'partagee') + complaint.complaint_free_answers.where(opinion: 1),
                 defavorable: complaint.complaint_answers.where(opinion: 'defavorable') + complaint.complaint_free_answers.where(opinion: 2) }

    total_commande = 0
    total_reclam = 0
    complaint.complaint_articles.each do |article|
      total_commande = total_commande + article.DL_MontantTTC
      if article.number_selected.present? && article.number_selected > 0
        if article.DL_QTE.present? && article.DL_MontantTTC.present?
          total_reclam = total_reclam + (article.DL_MontantTTC / article.DL_QTE * article.number_selected)
        else
          total_reclam = total_reclam + article.DL_MontantTTC
        end
      end
    end
    if total_commande != 0
      pourcentage_reclam = total_reclam * (100 / total_commande)
    else
      pourcentage_reclam = 0
    end

    @variables = { complaint: complaint, detail_commande: result[0], contenu_commande: contenu_commande, answers: answers,
                   total_commande: total_commande, pourcentage_reclam: pourcentage_reclam, interactions: interactions }
    @params = { search: params[:search] }
  end

  def form_third_submit
    @complaint = Complaint.find(params[:id])

    if params[:complaint].present?
      @complaint.complaint_articles.each do |article|
        article.number_selected = params[:complaint]["number_selected_#{article.AR_Ref}"]
        article.action_type = params[:complaint][:action_type]
        article.action_amount = params[:complaint]["action_amount_#{article.AR_Ref}"]
        article.save
      end
      @complaint.note = params[:complaint][:note]
      @complaint.mode = params[:complaint][:mode]
      @complaint.save

      interaction = Interaction.find(@complaint.interaction.id)
      result = DetailCommande.execute_procedure "p_detail_commande", interaction.do_piece, interaction.do_type
      detail_commande = result[0]

      if @complaint.complaint_articles.find_by(AR_Ref: "ZPORT").nil?
        article_to_add = ComplaintArticle.new(AR_Ref: 'ZPORT', DL_Design: 'Frais de port', DL_MontantTTC: detail_commande['DO_ValFrais'])
        article_to_add.number_selected = params[:complaint]["number_selected_#{article_to_add.AR_Ref}"]
        article_to_add.action_type = params[:complaint][:action_type]
        article_to_add.action_amount = params[:complaint]["action_amount_#{article_to_add.AR_Ref}"]
        if article_to_add.save!
          @complaint.complaint_articles << article_to_add
        end
      end

      redirect_to complaint_path(@complaint, search: params[:complaint][:search])
    end
  end

  def update_status
    complaint = Complaint.find(params[:id])
    complaint.complaint_status = params[:status]
    if complaint.save!
      head :ok
    else
      head :error
    end
  end

  def cagnottage
  #   complaint = Complaint.find(params[:id])
  #   if complaint.complaint_articles.present? && complaint.complaint_articles.first.action_type == 'cagnotte' &&
  #       complaint.complaint_articles.where('number_selected > 0').length > 0
  #     document_lines = []
  #     complaint.complaint_articles.where('number_selected > 0').each do |article|
  #       document_lines << {
  #           "referenceArticle": article.AR_Ref,
  #           "quantite": article.number_selected,
  #           "totalTTC": article.action_amount
  #       }
  #     end
  #     body = {
  #         "cle":"D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6",
  #         "typeDocument": complaint.interaction.do_type,
  #         "numeroDocument": complaint.interaction.do_piece,
  #         "lignesDocument": document_lines,
  #         "motif": params[:motif]
  #     }
  #     begin
  #       #response = RestClient.post('http://172.30.11.40:55444/SageWS_TEST/RC/AlimenterCagnotteVente', body.to_json, content_type: :json, accept: :json)
  #       response = RestClient.post('http://172.30.11.40:55444/SageWS/RC/AlimenterCagnotteVente', body.to_json, content_type: :json, accept: :json)
  #       json_body = JSON.parse(response.body)
  #       if (response.code == 200)
  #         #render json: json_body['erreur']
  #         if (json_body['erreur'])
  #           complaint.action_status = 2
  #           complaint.error_message = json_body['message']
  #           if complaint.save
  #             render json: json_body['message'], status: :error
  #           else
  #             render json: 'Erreur de mise à jour du statut', status: :internal_server_error
  #           end
  #         else
  #           complaint.action_status = 1
  #           complaint.interaction.status = 'closed'
  #           if complaint.interaction.save
  #             if complaint.save
  #               head :ok
  #             else
  #               render json: 'Erreur de mise à jour du statut', status: :internal_server_error
  #             end
  #           else
  #             render json: 'Erreur de mise à jour du statut', status: :internal_server_error
  #           end
  #         end
  #       else
  #         render json: response, status: :internal_server_error
  #       end
  #     rescue RestClient::ExceptionWithResponse => e
  #       render json: e.response, status: :internal_server_error
  #     end
  #   else
  #     complaint.action_status = 1
  #     complaint.interaction.status = 'closed'
  #     if complaint.interaction.save
  #       if complaint.save
  #         head :ok
  #       else
  #         render json: 'Erreur de mise à jour du statut', status: :internal_server_error
  #       end
  #     else
  #       render json: 'Erreur de mise à jour du statut', status: :internal_server_error
  #     end
  #   end
  # end
  complaint = Complaint.find(params[:id])
    response = HTTParty.post('http://172.30.11.40:55444/SageWS/RC/AlimenterCagnotteClient',
      :body => {
        "cle": "D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6",
        "codeTiers": complaint.interaction.ct_num,
        "montant": params[:amount].to_f,
        "motif": params[:motif]
      }.to_json,
      :headers => { 'Content-Type' => 'application/json'})
      json_body = JSON.parse(response.body)
      if (response.code == 200)
        if (json_body['erreur'])
          complaint.interaction.action_status = 2
          complaint.interaction.error_message = json_body['message']
          if complaint.interaction.save
            render json: json_body['message'], status: :error
          else
            render json: 'Erreur de mise à jour du statut', status: :internal_server_error
          end
        else
          complaint.interaction.action_status = 1
          complaint.interaction.status = 'closed'
          complaint.complaint_status = 'closed'
          if complaint.interaction.save
            if complaint.save
              head :ok
            else
              render json: 'Erreur de mise à jour du statut', status: :internal_server_error
            end
          else
            render json: 'Erreur de mise à jour du statut', status: :internal_server_error
          end
        end
      end
    end

  def echange
    complaint = Complaint.find(params[:id])
    if complaint.complaint_articles.present? && complaint.complaint_articles.where('number_selected > 0').length > 0
      document_lines = []
      
      complaint.complaint_articles.where('number_selected > 0').each do |article|
      
      
      response = HTTParty.post('http://172.30.11.40:55444/SageWS/RC/echangerArticles',
      :body => {
        "cle": "D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6",
        "typeDocument": complaint.interaction.do_type,
        "numeroDocument": complaint.interaction.do_piece,
      #   "lignesDocument": {
      #     "referenceArticle": article.AR_Ref,
      #     "quantite": article.number_selected,
      #     "totalTTC": article.action_amount
      # },
        "motif": params[:motif]
      }.to_json,
      :headers => { 'Content-Type' => 'application/json'})
      json_body = JSON.parse(response.body)
    end
    if (response.code == 200)
      if (json_body['erreur'])
        complaint.interaction.action_status = 2
        complaint.interaction.error_message = json_body['message']
        if complaint.interaction.save
          render json: json_body['message'], status: :error
        else
          render json: 'Erreur de mise à jour du statut', status: :internal_server_error
        end
      else
        complaint.interaction.action_status = 1
        complaint.interaction.status = 'closed'
        complaint.complaint_status = 'closed'
        if complaint.interaction.save
          if complaint.save
            head :ok
          else
            render json: 'Erreur de mise à jour du statut', status: :internal_server_error
          end
        else
          render json: 'Erreur de mise à jour du statut', status: :internal_server_error
        end
      end
    end  
  end
end

def remboursement
  complaint = Complaint.find(params[:id])
  # if params[:do_piece].present?
  # if complaint.interaction.do_piece.present?
  #   result = DetailCommande.execute_procedure "p_detail_commande", complaint.interaction.do_piece, complaint.interaction.do_type
  # end
    if complaint.complaint_articles.present? && complaint.complaint_articles.where('number_selected > 0').length > 0
      document_lines = []
      complaint.complaint_articles.where('number_selected > 0').each do |article|
        document_lines << {
            "referenceArticle": article.AR_Ref,
            "quantite": article.number_selected,
            "totalTTC": article.action_amount
        }
    end
      body = {
          "cle": 'D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6',
          "typeDocument": complaint.interaction.do_type,
          "numeroDocument": complaint.interaction.do_piece,
          "lignesDocument": document_lines,
          "montant": params[:amount].to_f,
          "souche": complaint.interaction.do_type,#params[:DO_Satut],
          "motif": params[:motif]
      }
      begin
        response = HTTParty.post('http://172.30.11.40:55444/SageWS/RC/rembourserVente', :body => body.to_json, :headers => { 'Accept' => 'application/json' })
        puts response.code
        puts cle
        json_body = JSON.parse(response.body)
        if response.code == 200
          render json: json_body['erreur']
          if (json_body['erreur'])
            complaint.action_status = 2
            complaint.error_message = json_body['message']
            if complaint.save
              render json: json_body['message'], status: :error
            else
              render json: 'Erreur de mise à jour du statut', status: :internal_server_error
            end
          else
            complaint.action_status = 1
            complaint.interaction.status = 'closed'
            complaint.complaint_status = 'closed'
            if complaint.interaction.save
              if complaint.save
                head :ok
              else
                render json: 'Erreur de mise à jour du statut', status: :internal_server_error
              end
            else
              render json: 'Erreur de mise à jour du statut', status: :internal_server_error
            end
          end
        else
          render json: response, status: :internal_server_error
        end
    else
      complaint.action_status = 1
      complaint.interaction.status = 'closed'
      if complaint.interaction.save
        if complaint.save
          head :ok
        else
          render json: 'Erreur de mise à jour du statut', status: :internal_server_error
        end
      else
        render json: 'Erreur de mise à jour du statut', status: :internal_server_error
      end
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def complaint_params
      params.require(:complaint).permit(:kind, :contact_method, :interaction_id, :complaint_status)
    end
  end
