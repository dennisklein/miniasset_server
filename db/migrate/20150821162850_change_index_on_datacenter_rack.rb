class ChangeIndexOnDatacenterRack < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        remove_index :datacenter_racks, :name
        add_index :datacenter_racks, :name
      end

      dir.down do
        remove_index :datacenter_racks, :name
        add_index :datacenter_racks, :name, unique: true
      end
    end
  end
end
