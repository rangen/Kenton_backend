class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :correct_anwser
      t.text :incorrect_answers, array: true, default: []
      t.string :question


      t.timestamps
    end
  end
end
