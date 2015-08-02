class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @service = Service.find(params[:service_id])
    @question = Question.new
  end

  def create
    @question = Question.new(
      question_params.merge(service_id: params[:service_id].to_i)
    )

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
    if Question.find(params[:id]).update_attributes(question_params)
      flash[:success] = 'Question updated'
      redirect_to Service.find(params[:service_id])
    else
      render :edit
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    flash[:success] = 'Question deleted'
    redirect_to Service.find(params[:service_id])
  end

  private

  def question_params
    params.require(:question).permit(:question_en, :question_fr, :answer_en,
                                     :answer_fr, :service_id)
  end
end
