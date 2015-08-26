class AddDatacenterRackTypeRefToDatacenterRack < ActiveRecord::Migration
  def change
    add_column :datacenter_racks, :datacenter_rack_type_id, :integer, index: true
  end
end
