class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :corret_answer
      t.string :video
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
