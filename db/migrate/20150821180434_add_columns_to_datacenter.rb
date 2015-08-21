class AddColumnsToDatacenter < ActiveRecord::Migration
  def change
    add_column :datacenters, :max_floors, :integer, default: 16
    add_column :datacenters, :max_rows_per_floor, :integer, default: 16
    add_column :datacenters, :max_cells_per_row, :integer, default: 16
  end
end
