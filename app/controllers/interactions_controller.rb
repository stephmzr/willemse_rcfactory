class InteractionsController < ApplicationController
  before_action :set_interaction, only: [:show, :edit, :update, :destroy]

  # GET /interactions
  def index
    @interactions = Interaction.joins("left join public.complaints on interactions.id=complaints.interaction_id where complaints.id is null and status<2")#.where("status<?",2)
    @interactions = Interaction.where(object: ["chgmt_date_livraison", "chgmt_addresse_livraison", "commande_non_trouvable", "conseils_hortic", 
                                "facture", "dmde_partenariat", "desabo_mailing", "dfo", "marketplace", "renseign_pour_commande", "vente_privee"])
    @interactions.each do |interaction|
      result = FicheClient.execute_procedure "p_ficheclient", interaction.ct_num
      fiche_client = result[0]
      interaction.client_name = fiche_client['CT_Nom'].to_s + " " + fiche_client['CT_Prenom'].to_s
    end
end

  # GET /interactions/1
  def show
    @interaction = Interaction.find(params[:id])
    @comment = Comment.new
    @comment.interaction_id = @interaction.id
    if params[:do_piece].present?
      @params = { search: params[:search], client_num: params[:client_num],
                  do_piece: params[:do_piece], do_type: params[:do_type] }
    else
      @params = { search: params[:search], client_num: params[:client_num] }
    end
  end

  # GET /interactions/new
  def new
    @interaction = Interaction.new 
    @params = { search: params[:search], client_num: params[:client_num],
                do_piece: params[:do_piece], do_type: params[:do_type] }
    @interaction.ct_num = params[:client_num]
    @interaction.do_piece = params[:do_piece]
    @interaction.do_type = params[:do_type]
    @interaction.date = Date.today
  end

  # GET /interactions/1/edit
  def edit
    @params = { search: params[:search], client_num: params[:client_num],
                do_piece: params[:do_piece], do_type: params[:do_type] }
  end

  # POST /interactions
  def create
    @interaction = Interaction.new(interaction_params)

    if @interaction.save
      add_attachments
      if params[:commit] == 'Enregistrer'
        redirect_to interaction_path(id: @interaction.id, client_num: params[:interaction][:ct_num],
                                    search: params[:interaction][:search], do_piece: params[:interaction][:do_piece],
                                    do_type: params[:interaction][:do_type] )
      else
        redirect_to new_complaint_path(client_num: params[:interaction][:ct_num], search: params[:interaction][:search],
                                      kind: params[:interaction][:object], interaction_id: @interaction.id)
      end
    else
      render :new
    end
  end

  # PATCH/PUT /interactions/1
  def update
    if @interaction.update(interaction_params)
      add_attachments
      redirect_to interaction_path(id: @interaction.id, client_num: params[:interaction][:ct_num],
                                  search: params[:interaction][:search], do_piece: params[:interaction][:do_piece],
                                  do_type: params[:interaction][:do_type] )
    else
      render :edit
    end
  end

  # DELETE /interactions/1
  def destroy
    @interaction.destroy
    if params[:do_piece].present?
      redirect_to fiche_clients_path(search: params[:search], client_num: params[:client_num])
    else
      redirect_to detail_commandes_path(search: params[:search], client_num: params[:client_num],
                                        do_piece: params[:do_piece], do_type: params[:do_type] )
    end
  end

  def update_status
    interaction = Interaction.find(params[:id])
    interaction.status = params[:status]
    if interaction.save
      head :ok
    else
      head :error
    end
  end

  def cagnottage
    # interaction = Interaction.find(params[:id])
    # body = {
    #     "cle": "D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6",
    #     "codeTiers": interaction.ct_num,
    #     "montant": params[:amount].to_f,
    #     "motif": params[:motif]
    # }
    # begin
    #   response = RestClient.post('http://172.30.11.40:55444/SageWS/RC/AlimenterCagnotteClient', body.to_json, {content_type: :json, accept: :json})
    #   json_body = JSON.parse(response.body)
    #   if (response.code == 200)
    #     if (json_body['erreur'])
    #       interaction.action_status = 2
    #       interaction.error_message = json_body['message']
    #       if interaction.save
    #         render json: json_body['message'], status: :error
    #       else
    #         render json: 'Erreur de mise à jour du statut', status: :internal_server_error
    #       end
    #     else
    #       interaction.action_status = 1
    #       interaction.status = 'closed'
    #       if interaction.save
    #         head :ok
    #       else
    #         render json: 'Erreur de mise à jour du statut', status: :internal_server_error
    #       end
    #     end

    #   else
    #     render json: response, status: :internal_server_error
    #   end
    # rescue RestClient::ExceptionWithResponse => e
    #   render json: e.response, status: :internal_server_error
    # end
    interaction = Interaction.find(params[:id])
    response = HTTParty.post('http://172.30.11.40:55444/SageWS/RC/AlimenterCagnotteClient',
      :body => {
        "cle": 'D4236$MkJ3jSW!k$y7?Ac$fry#8Q%6',
        "codeTiers": interaction.ct_num,
        "montant": params[:amount].to_f,
        "motif": params[:motif]
      }.to_json,
      :headers => { 'Content-Type' => 'application/json'})
      json_body = JSON.parse(response.body)
      if (response.code == 200)
        if (json_body['erreur'])
          interaction.action_status = 2
          interaction.error_message = json_body['message']
          if interaction.save
            render json: json_body['message'], status: :error
          else
            render json: 'Erreur de mise à jour du statut', status: :internal_server_error
          end
        else
          interaction.action_status = 1
          interaction.status = 'closed'
          if interaction.save
            head :ok
          else
            render json: 'Erreur de mise à jour du statut', status: :internal_server_error
          end
        end
      else
        render json: response, status: :internal_server_error
      end
  end

  private
    def add_attachments
      if params[:interaction].present?
        if params[:interaction][:existing_file].present?
          attachments_to_save = Attachment.where(id: params[:interaction][:existing_file].drop(1))
          @interaction.attachments.each do |attachment|
            unless attachments_to_save.map{ |r| r.file_file_name }.include?(attachment.file_file_name)
              attachment.delete
            end
          end
        end
        if params[:interaction][:file].present?
          params[:interaction][:file].each do |attachment|
            attachment_to_add = Attachment.new(kind: :interaction, file: attachment)
            if attachment_to_add.save
              @interaction.attachments << attachment_to_add
            end
          end
        end
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_interaction
      @interaction = Interaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interaction_params
      params.require(:interaction).permit(:ct_num, :do_piece, :do_type, :kind, :date, :contact, :object, :status, :contact_ct_nb, :summary, :suggested_cagnotte_amount)
    end
end
