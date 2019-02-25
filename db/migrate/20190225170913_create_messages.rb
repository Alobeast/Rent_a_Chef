class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :booking, foreign_key: true
      t.references :chef, foreign_key: {to_table: :users}
      t.references :customer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
