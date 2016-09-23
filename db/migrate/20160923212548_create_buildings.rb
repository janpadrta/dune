class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :type
      t.string :name, null: false
      t.string :description, default: ''
      t.decimal :population_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :melange_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :material_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :solar_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :exp_bonus, precision: 12, scale: 4, default: 0.0
      t.decimal :population_cost, precision: 12, scale: 4, default: 0.0
      t.decimal :melange_cost, precision: 12, scale: 4, default: 0.0
      t.decimal :material_cost, precision: 12, scale: 4, default: 0.0
      t.decimal :solar_cost, precision: 12, scale: 4, default: 0.0
      t.decimal :exp_cost, precision: 12, scale: 4, default: 0.0

      t.timestamps
    end
  end
end
