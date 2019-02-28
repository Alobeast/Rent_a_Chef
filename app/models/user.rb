class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :bookings_as_customer, foreign_key: :customer_id, class_name: 'Booking', dependent: :destroy
  has_many :bookings_as_chef, foreign_key: :chef_id, class_name: 'Booking', dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :profile_picture, PhotoUploader

  mount_uploader :image1, PhotoUploader
  mount_uploader :image2, PhotoUploader
  mount_uploader :image3, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_cuisine,
  against: [ :cuisine ],
  using: {
    tsearch: { prefix: true }
  }
end
