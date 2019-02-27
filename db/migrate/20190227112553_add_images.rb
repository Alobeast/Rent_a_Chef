class AddImages < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image1, :string
    add_column :users, :image2, :string
    add_column :users, :image3, :string
  end
end
