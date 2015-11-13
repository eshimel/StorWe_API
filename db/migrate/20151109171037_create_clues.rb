class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :clue
      t.references :outline, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
      t.integer :count_column
    end
  end
end
