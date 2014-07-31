class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.float :price
      t.boolean :sold
      t.references :artist, index: true
      t.string :name

      t.timestamps
    end
  end
end
