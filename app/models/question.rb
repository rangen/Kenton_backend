class Question < ApplicationRecord
  has_many:answers

  def self.get_new
    rm = RestClient.get 'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple'
    rm_array = JSON.parse(rm)["results"]

    Question.destroy_all

    rm_array.each do |question|
    Question.create(
    correct_anwser: question["correct_answer"],
    incorrect_answer: question["incorrect_answers"],
    question: question["question"],
    )
    end
  end
end
