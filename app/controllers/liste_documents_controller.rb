class ListeDocumentsController < ApplicationController
  before_action :set_liste_document, only: [:show, :edit, :update, :destroy]

  # GET /liste_documents
  def index
    @liste_documents = ListeDocument.all
  end

  # GET /liste_documents/1
  def show
  end

  # GET /liste_documents/new
  def new
    @liste_document = ListeDocument.new
  end

  # GET /liste_documents/1/edit
  def edit
  end

  # POST /liste_documents
  def create
    @liste_document = ListeDocument.new(liste_document_params)

    if @liste_document.save
      redirect_to @liste_document, notice: 'Recherche document was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /liste_documents/1
  def update
    if @liste_document.update(liste_document_params)
      redirect_to @liste_document, notice: 'Recherche document was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /liste_documents/1
  def destroy
    @liste_document.destroy
    redirect_to liste_documents_url, notice: 'Recherche document was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liste_document
      @liste_document = ListeDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def liste_document_params
      params.require(:liste_document).permit(:ca_num, :s_intitule, :do_piece, :do_ref, :do_coord01, :do_totalht, :do_date, :do_statut, :do_expedie, :do_type)
    end
end
