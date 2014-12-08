class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :correct
      t.integer :user_id
      t.string :article_id
      t.string :issue_id

      t.timestamps null: false
    end
  end
end
