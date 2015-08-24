class CreateDatacenterRacks < ActiveRecord::Migration
  def change
    create_table :datacenter_racks do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :datacenter_racks, :name
  end
end
