class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :name
      t.text :qualification
      t.text :contact

      t.timestamps null: false
    end
  end
end
