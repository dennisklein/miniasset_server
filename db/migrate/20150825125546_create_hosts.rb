class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name, limit: 64, null: false
      t.text :description

      t.timestamps
    end
    add_index :hosts, :name, unique: true
  end
end
