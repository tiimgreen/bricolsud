class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @service = Service.find(params[:service_id])
    @question = Question.new
  end

  def create
    @service = Service.find(params[:service_id])
    @question = Question.new(question_params.merge({ service_id: @service.id }))

    if @question.save
      flash[:success] = 'Question created'
      redirect_to @question.service
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:service_id])
    @question = Question.find(params[:id])
  end

  def update
    @service = Service.find(params[:service_id])
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      flash[:success] = 'Question updated'
      redirect_to @service
    else
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:service_id])
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:success] = 'Question deleted'
      redirect_to @service
    else
      flash[:warning] = 'Problem deleting question'
      redirect_to request.referer
    end
  end

  private

    def question_params
      params.require(:question).permit(:question_en, :question_fr, :answer_en,
                                       :answer_fr, :service_id)
    end
end
