class AddcountColumnToOutlines < ActiveRecord::Migration
   def self.up
    add_column :outlines, :column_count, :integer, :default => 0
  end

  def self.down
    remove_column :outlines, :column_count
  end
end
