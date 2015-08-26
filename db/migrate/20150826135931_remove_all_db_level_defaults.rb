class RemoveAllDbLevelDefaults < ActiveRecord::Migration
  def change
    # we handle defaults on AR-level only
    change_column :datacenters, :max_floors, :integer, default: nil
    change_column :datacenters, :max_rows_per_floor, :integer, default: nil
    change_column :datacenters, :max_cells_per_row, :integer, default: nil
  end
end
