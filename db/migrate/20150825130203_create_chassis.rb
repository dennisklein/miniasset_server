class CreateChassis < ActiveRecord::Migration
  def change
    create_table :chassis do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :chassis, :name, unique: true
  end
end
