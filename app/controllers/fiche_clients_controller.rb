class FicheClientsController < ApplicationController
  before_action :set_fiche_client, only: [:show, :edit, :update, :destroy]

  # GET /fiche_clients
  def index
    @fiche_clients = FicheClient.all
  end

  # GET /fiche_clients/1
  def show
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
