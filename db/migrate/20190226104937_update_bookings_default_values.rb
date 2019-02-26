class UpdateBookingsDefaultValues < ActiveRecord::Migration[5.2]
  def change
    change_column_default :bookings, :status, "Pending"
    change_column_default :users, :availability, true
  end
end
