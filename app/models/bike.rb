class Bike < ApplicationRecord
  validates :title, presence: true
  validates :availability, presence: true
  validates :price, presence: true, allow_blank: false
  belongs_to :tenant, class_name: "User", foreign_key: "tenant_id"
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
