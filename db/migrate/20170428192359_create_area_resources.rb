class CreateAreaResources < ActiveRecord::Migration[5.0]
  def change
    create_table :area_resources do |t|
      t.references :area, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps
    end
  end
end
