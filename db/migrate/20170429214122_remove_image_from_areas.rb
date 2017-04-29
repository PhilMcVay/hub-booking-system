class RemoveImageFromAreas < ActiveRecord::Migration[5.0]
  def change
    remove_column :areas, :image
  end
end
