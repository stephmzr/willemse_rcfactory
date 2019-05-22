class ComplaintAnswersController < ApplicationController
  before_action :set_complaint_answer, only: [:show, :edit, :update, :destroy]

  # GET /complaint_answers
  def index
    @complaint_answers = ComplaintAnswer.all
  end

  # GET /complaint_answers/1
  def show
  end

  # GET /complaint_answers/new
  def new
    @complaint_answer = ComplaintAnswer.new
  end

  # GET /complaint_answers/1/edit
  def edit
  end

  # POST /complaint_answers
  def create
    @complaint_answer = ComplaintAnswer.new(complaint_answer_params)

    if @complaint_answer.save
      redirect_to @complaint_answer, notice: 'Complaint answer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /complaint_answers/1
  def update
    if @complaint_answer.update(complaint_answer_params)
      redirect_to @complaint_answer, notice: 'Complaint answer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /complaint_answers/1
  def destroy
    @complaint_answer.destroy
    redirect_to complaint_answers_url, notice: 'Complaint answer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint_answer
      @complaint_answer = ComplaintAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def complaint_answer_params
      params.require(:complaint_answer).permit(:text, :complaint_kind, :opinion, :question_number, :extra_info, :summary_text, :coef)
    end
end
