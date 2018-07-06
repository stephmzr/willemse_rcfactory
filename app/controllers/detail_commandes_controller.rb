class DetailCommandesController < ApplicationController
  before_action :set_detail_commande, only: [:show, :edit, :update, :destroy]

  # GET /detail_commandes
  def index
    if params[:do_piece].present?
      @detail_commande = DetailCommande.find_by(do_piece: params[:do_piece])
      if @detail_commande.present?
        redirect_to detail_commande_path(@detail_commande)
        return
      else
        redirect_to liste_documents_path, alert: "Aucune commande avec ce numéro n'a été trouvée."
      end
    else
      redirect_to liste_documents_path
    end
  end

  # GET /detail_commandes/1
  def show
    @contenu_commande = ContenuCommande.where(do_piece: @detail_commande.do_piece)
  end

  # GET /detail_commandes/new
  def new
    @detail_commande = DetailCommande.new
  end

  # GET /detail_commandes/1/edit
  def edit
  end

  # POST /detail_commandes
  def create
    @detail_commande = DetailCommande.new(detail_commande_params)

    if @detail_commande.save
      redirect_to @detail_commande, notice: 'Detail commande was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /detail_commandes/1
  def update
    if @detail_commande.update(detail_commande_params)
      redirect_to @detail_commande, notice: 'Detail commande was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /detail_commandes/1
  def destroy
    @detail_commande.destroy
    redirect_to detail_commandes_url, notice: 'Detail commande was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_commande
      @detail_commande = DetailCommande.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def detail_commande_params
      params.require(:detail_commande).permit(:do_piece, :do_ref, :do_date, :ca_num, :montantttc, :do_valfrais, :do_statut, :urgent, :point_retrait_relais, :societe_livraison, :nom_livraison, :prenom_livraison, :email_livraison, :telephone_livraison, :adresse_livraison, :complement_livraison, :code_postal_livraison, :ville_livraison, :pays_livraison, :code_avantage, :decagnottage, :date_expedition, :numero_tracking, :lien_tracking, :code_partenaire, :motifs_rmbt_recl, :motifs_retour)
    end
end
