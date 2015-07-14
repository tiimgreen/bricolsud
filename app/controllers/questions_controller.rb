class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @question = Question.new
  end

  def create
    @service = Service.find(params[:id])

    @question = @service.questions.build(question_params)
    if @question.save
      flash[:success] = 'Question created'
      redirect_to @service
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      flash[:success] = 'Question updated'
      redirect_to @service
    else
      render :edit
    end
  end

  def destroy
    @service = Serivce.find(params[:service_id])
  end

  private

    def question_params
      params.require(:question).permit(:question, :answer)
    end
end
