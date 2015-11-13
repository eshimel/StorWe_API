class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.text :submission
      t.references :outline, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
      t.integer :count_column
    end
  end
end
