class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.integer :area
      t.integer :cost
      t.integer :pond
      t.text :url

      t.timestamps null: false
    end
    add_index :designs, :area
    add_index :designs, :cost
  end
end
