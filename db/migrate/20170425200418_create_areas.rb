class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :capacity
      t.string :type
      t.string :image
      t.string :color

      t.timestamps
    end
  end
end
