class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :membership
      t.text :other_notes
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
