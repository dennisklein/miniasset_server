class AddCustomPrefixToDatacenterRack < ActiveRecord::Migration
  def change
    add_column :datacenter_racks, :custom_prefix, :string, limit: 5
  end
end
