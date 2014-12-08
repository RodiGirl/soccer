class AddUserAnswerToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :user_answer, :string
  end
end
