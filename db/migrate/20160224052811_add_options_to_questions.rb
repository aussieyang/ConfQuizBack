class AddOptionsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :a, :string
    add_column :questions, :b, :string
    add_column :questions, :c, :string
    add_column :questions, :d, :string
  end
end
