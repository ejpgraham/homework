class CreateHousesTable < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :address, null: false
      t.timestamps
    end
  end
end
