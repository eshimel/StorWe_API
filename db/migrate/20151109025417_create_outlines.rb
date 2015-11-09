class CreateOutlines < ActiveRecord::Migration
  def change
    create_table :outlines do |t|
      t.string :subjects
      t.string :settings
      t.string :themes
      t.timestamps null: false
    end
  end
end
