class RemoveTypeFromAreas < ActiveRecord::Migration[5.0]
  def change
    remove_column :areas, :type
  end
end
