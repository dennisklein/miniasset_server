class CreateDatacenterRackTypes < ActiveRecord::Migration
  def change
    create_table :datacenter_rack_types do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :datacenter_rack_types, :name, unique: true
  end
end
