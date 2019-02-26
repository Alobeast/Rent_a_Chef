class AddChefColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :chef, :boolean, default: false
  end
end
