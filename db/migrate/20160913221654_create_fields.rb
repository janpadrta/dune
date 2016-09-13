class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :user_id
      t.integer :planet_id
      t.integer :pos_x
      t.integer :pos_y

      t.decimal :population, precision: 12, scale: 4, default: 0.0
      t.decimal :material, precision: 12, scale: 4, default: 0.0

      t.timestamps
    end

    add_index :fields, :user_id
    add_index :fields, :planet_id
  end
end
