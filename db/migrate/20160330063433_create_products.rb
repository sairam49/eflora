class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :url
      t.string :title
      t.text :cost

      t.timestamps null: false
    end
  end
end
