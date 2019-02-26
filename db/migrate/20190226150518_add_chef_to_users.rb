class AddChefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :chef, :boolean
  end
end
