class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :chef, foreign_key: {to_table: :users}
      t.references :customer, foreign_key: {to_table: :users}
      t.float :rating
      t.string :status
      t.integer :number_of_guests
      t.jsonb :dietary_requirements

      t.timestamps
    end
  end
end
