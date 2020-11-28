class Api::V1::AnswersController < ApplicationController


  def index
    @answers = Answer.all
  end
end
