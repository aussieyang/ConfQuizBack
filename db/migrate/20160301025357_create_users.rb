class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :speaker?
      t.boolean :q1?
      t.boolean :q2?
      t.boolean :q3?
      t.boolean :q4?
      t.boolean :q5?
      t.boolean :q6?

      t.timestamps null: false
    end
  end
end
