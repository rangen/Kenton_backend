class Api::V1::QuestionsController < ApplicationController

  def index
      @questions = Question.all
      render json: @questions
  end


  def show
      @question = Question.find(params[:id])
      render json: @question, status: :ok
  end

  def create
  #   @question = Question.new(question_params)
  #   if @question.save
  #     render json: @question, status: :ok
  #   else
  #     render json: {errors: @question.errors.full_messages}, status: :unproccesible_entity
  #   end
  # end
  # creating one instance of question
  # if not possible to save then render error message
  end

  private

def question_params
  params.require(:question).permit(:text)

end






end
