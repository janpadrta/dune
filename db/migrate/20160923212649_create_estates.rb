class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|
      t.integer :building_id
      t.integer :field_id
      t.integer :number, default: 1

      t.timestamps
    end
  end
end
