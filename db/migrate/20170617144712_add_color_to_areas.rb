class AddColorToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :color, :string
  end
end
