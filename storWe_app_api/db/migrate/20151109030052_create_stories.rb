class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :contribution
      t.string :clues
      t.references :user
      t.references :outline

      t.timestamps null: false

    end
  end
end
