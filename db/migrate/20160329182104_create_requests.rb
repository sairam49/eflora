class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :order

      t.timestamps null: false
    end
  end
end
