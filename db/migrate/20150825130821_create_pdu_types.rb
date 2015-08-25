class CreatePduTypes < ActiveRecord::Migration
  def change
    create_table :pdu_types do |t|
      t.string :name, limit: 64
      t.text :description

      t.timestamps
    end
    add_index :pdu_types, :name, unique: true
  end
end
