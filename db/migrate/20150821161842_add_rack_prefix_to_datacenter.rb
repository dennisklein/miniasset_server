class AddRackPrefixToDatacenter < ActiveRecord::Migration
  def change
    add_column :datacenters, :rack_prefix, :string, limit: 5
  end
end
