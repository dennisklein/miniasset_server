class CreatePdus < ActiveRecord::Migration
  def change
    create_table :pdus do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :pdus, :name, unique: true
  end
end
