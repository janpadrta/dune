class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :type
      t.string :name, default: ''
      t.integer :solar, default: 50000
      t.decimal :melange, precision: 12, scale: 4, default: 5.0
      t.integer :research, default: 2000
      t.decimal :material, precision: 12, scale: 4, default: 5000.0
      t.integer :influence, default: 0
      t.text :noticeboard, default: ''
      t.decimal :melange_percent, precision: 12, scale: 4, default: 5.0

      t.timestamps
    end
  end
end
