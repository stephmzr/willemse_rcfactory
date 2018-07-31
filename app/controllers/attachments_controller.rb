class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  # GET /attachments
  def index
    @attachments = Attachment.all
  end

  # GET /attachments/1
  def show
    puts(Rails.application.routes.url_helpers.rails_blob_path(@attachment.pdf, only_path: true)).inspect
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
  end

  # GET /attachments/1/edit
  def edit
  end

  # POST /attachments
  def create
    @attachment = Attachment.new(attachment_params)
    pdf = params[:attachment][:pdf]

    if @attachment.save
      if pdf.present?
        @attachment.pdf.attach(pdf)
      end
      redirect_to @attachment, notice: 'Attachment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /attachments/1
  def update
    pdf = params[:attachment][:pdf]

    if @attachment.update(attachment_params)
      if pdf.present?
        @attachment.pdf.attach(pdf)
      end
      redirect_to @attachment, notice: 'Attachment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /attachments/1
  def destroy
    @attachment.destroy
    redirect_to attachments_url, notice: 'Attachment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attachment_params
      params.require(:attachment).permit(:kind)
    end
end
