class CreatePsus < ActiveRecord::Migration
  def change
    create_table :psus do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :psus, :name, unique: true
  end
end
