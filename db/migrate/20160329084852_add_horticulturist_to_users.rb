class AddHorticulturistToUsers < ActiveRecord::Migration
  def change
    add_column :users, :horticulturist, :boolean
    add_index :users, :horticulturist
  end
end
