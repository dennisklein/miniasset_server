class CreateChassisTypes < ActiveRecord::Migration
  def change
    create_table :chassis_types do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :chassis_types, :name, unique: true
  end
end
