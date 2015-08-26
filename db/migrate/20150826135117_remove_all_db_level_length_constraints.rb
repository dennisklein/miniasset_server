class RemoveAllDbLevelLengthConstraints < ActiveRecord::Migration
  def change
    # we handle length constraints on AR-level only
    change_column :chassis, :name, :string, limit: nil
    change_column :chassis_types, :name, :string, limit: nil
    change_column :datacenter_racks, :name, :string, limit: nil
    change_column :datacenter_racks, :custom_prefix, :string, limit: nil
    change_column :datacenter_rack_types, :name, :string, limit: nil
    change_column :datacenters, :name, :string, limit: nil
    change_column :datacenters, :rack_prefix, :string, limit: nil
    change_column :hosts, :name, :string, limit: nil
    change_column :pdus, :name, :string, limit: nil
    change_column :pdu_types, :name, :string, limit: nil
    change_column :psus, :name, :string, limit: nil
    change_column :psu_types, :name, :string, limit: nil
  end
end
