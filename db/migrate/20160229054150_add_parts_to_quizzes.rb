class AddPartsToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :title, :string
    add_column :quizzes, :speaker, :string
  end
end
