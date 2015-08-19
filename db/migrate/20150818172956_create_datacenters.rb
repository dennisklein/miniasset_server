class CreateDatacenters < ActiveRecord::Migration
  def change
    create_table :datacenters do |t|
      t.string :name, limit: 64, null: false
      t.text :description

      t.timestamps
    end
    add_index :datacenters, :name, unique: true
  end
end
