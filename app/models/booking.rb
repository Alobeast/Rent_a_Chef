class Booking < ApplicationRecord
  belongs_to :chef, class_name: "User"
  belongs_to :customer, class_name: "User"
  has_many :messages
end
