class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :qualification, :string
    add_column :users, :short_bio, :text
    add_column :users, :availability, :boolean
    add_column :users, :price, :integer
    add_column :users, :cuisine, :string
  end
end
