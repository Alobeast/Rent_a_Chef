class Message < ApplicationRecord
  belongs_to :booking
  belongs_to :chef
  belongs_to :customer
end
