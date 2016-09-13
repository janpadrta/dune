class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :system_id
      t.integer :position
      t.datetime :discovered_at
      t.integer :house_id
      t.boolean :available_to_all

      t.integer :fields, default: 0
      t.decimal :population_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :material_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :solar_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :exp_bonus, precision: 12, scale: 4, default: 0.0

      t.timestamps
    end

    add_index :planets, :name
    add_index :planets, :house_id
    add_index :planets, :system_id
  end
end
