class CreatePsuTypes < ActiveRecord::Migration
  def change
    create_table :psu_types do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :psu_types, :name, unique: true
  end
end
