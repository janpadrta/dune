class CreateGlobals < ActiveRecord::Migration[5.0]
  def change
    create_table :globals do |t|
      t.string :setting, null: false
      t.boolean :value
      t.date :datum
      t.string :slovo
      t.decimal :cislo

      t.timestamps
    end
  end
end
