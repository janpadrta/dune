class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :house_id, :integer
    add_column :users, :admin, :boolean, default: false
    add_column :users, :emperor, :boolean, default: false
    add_column :users, :regent, :boolean, default: false
    add_column :users, :arrakis, :boolean, default: false
    add_column :users, :leader, :boolean, default: false
    add_column :users, :mentat, :boolean, default: false
    add_column :users, :landsraad, :boolean, default: false
    add_column :users, :solar, :integer, default: 5000
    add_column :users, :melange, :decimal, default: 0.5
    add_column :users, :research, :integer, default: 250
    add_column :users, :influence, :integer, default: 0
  end
end
