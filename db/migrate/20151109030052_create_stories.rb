class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|

      t.text :contribution
      t.text :clues

       t.references :user, index: true, foreign_key: true
      t.references :outline, index: true, foreign_key: true

      t.timestamps null: false

    end
  end
end
