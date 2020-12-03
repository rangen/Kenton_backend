class Api::V1::AnswersController < ApplicationController


  def index
    @answers = Answer.all
  end

  def show

    @answer = Answer.find(params[:id])

    render json: @answer, status: :ok
  end


end
