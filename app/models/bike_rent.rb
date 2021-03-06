class BikeRent < ApplicationRecord
  validates :booking_date, presence: true
  belongs_to :renter, class_name: "User", foreign_key: "renter_id"
  belongs_to :bike
end
