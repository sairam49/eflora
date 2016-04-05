class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :horticulturist
      t.text :policy
      t.text :flowers
      t.string :from

      t.timestamps null: false
    end
    add_index :agreements, :horticulturist
    add_index :agreements, :from
  end
end
