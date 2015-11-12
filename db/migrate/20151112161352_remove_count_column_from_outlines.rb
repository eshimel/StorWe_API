class RemoveCountColumnFromOutlines < ActiveRecord::Migration
  def change
    remove_column :outlines, :column_count, :integer

end
end
