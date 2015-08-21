class CreateJoinTableDatacenterRackLocations < ActiveRecord::Migration
  def change
    create_table :datacenter_rack_locations do |t|
      t.references :datacenter_rack
      t.index :datacenter_rack_id, unique: true
      t.references :datacenter, index: true

      t.integer :floor
      t.integer :row
      t.integer :cell

      t.index [:datacenter_id, :floor, :row, :cell], unique: true, name: 'index_datacenter_rack_locations_on_unique_location'

      t.timestamps
    end

    remove_column :datacenter_racks, :datacenter_id
  end
end
