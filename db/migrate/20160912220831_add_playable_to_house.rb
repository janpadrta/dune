class AddPlayableToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :playable, :boolean, default: false
  end
end
