class RemoveChefFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :chef_id
    rename_column :messages, :customer_id, :user_id
  end
end
