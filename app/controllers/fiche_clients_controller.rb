class FicheClientsController < ApplicationController
  before_action :set_fiche_client, only: [:show, :edit, :update, :destroy]

  # GET /fiche_clients
  def index
    if params[:client_num].present?
      result = FicheClient.execute_procedure "p_ficheclient", params[:client_num]
      if result.present?
        documents = FicheClient.execute_procedure "p_listdocs", params[:client_num]
        documents.each do |document|
          document['DO_TotalHT'] = "%.2f" % document['DO_TotalHT']
          case document['DO_Type']
          when 0
            document['DO_Type_Text'] = 'Devis'
          when 1
            document['DO_Type_Text'] = 'Bon de commande'
          when 2
            document['DO_Type_Text'] = 'Préparation de livraison'
          when 3
            document['DO_Type_Text'] = 'Bon de livraison'
          when 4
            document['DO_Type_Text'] = 'Bon de retour'
          when 5
            document['DO_Type_Text'] = 'Bon d\'avoir'
          when 6
            document['DO_Type_Text'] = 'Facture'
          when 7
            document['DO_Type_Text'] = 'Facture comptabilisée'
          when 8
            document['DO_Type_Text'] = 'Archive'
          else
            document['DO_Type_Text'] = ''
          end
        end
        interactions = Interaction.where(ct_num: params[:client_num])
        @variables = { fiche_client: result[0], documents: documents, interactions: interactions }
        @params = { search: params[:search] }
      else
        redirect_to recherche_clients_path, alert: "Aucun client avec ce numéro n'a été trouvé dans les fiches client."
      end
    else
      redirect_to recherche_clients_path
    end
  end

  # GET /fiche_clients/1
  def show
    @documents = ListeDocument.where(ct_num: @fiche_client.ct_num)
  end

  # GET /fiche_clients/new
  def new
    @fiche_client = FicheClient.new
  end

  # GET /fiche_clients/1/edit
  def edit
  end

  # POST /fiche_clients
  def create
    @fiche_client = FicheClient.new(fiche_client_params)

    if @fiche_client.save
      redirect_to @fiche_client, notice: 'Fiche client was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fiche_clients/1
  def update
    if @fiche_client.update(fiche_client_params)
      redirect_to @fiche_client, notice: 'Fiche client was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fiche_clients/1
  def destroy
    @fiche_client.destroy
    redirect_to fiche_clients_url, notice: 'Fiche client was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiche_client
      @fiche_client = FicheClient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fiche_client_params
      params.require(:fiche_client).permit(:ct_num, :ct_intitule, :ct_civilite, :ct_nom, :ct_prenom, :ct_adresse, :ct_complement, :ct_codepostal, :ct_ville, :ct_pays, :ct_email, :ct_telephone, :ct_telportable, :solde_cagnotte)
    end
end
