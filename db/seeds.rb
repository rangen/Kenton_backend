require "rest-client"
rm = RestClient.get 'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple'
rm_array = JSON.parse(rm)["results"]

Question.destroy_all

rm_array.each do |question|
 Question.create(
 correct_answer: question["correct_answer"],
 incorrect_answer: question["incorrect_answers"],
 question: question["question"],
 )
end
