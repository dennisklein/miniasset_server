class AddDatacenterRefToDatacenterRacks < ActiveRecord::Migration
  def change
    add_reference :datacenter_racks, :datacenter, index: true
  end
end
