class Bike < ApplicationRecord
  validates :title, presence: true, allow_blank: false
  validates :availability, presence: true
  validates :price, presence: true, allow_blank: false
  belongs_to :tenant, class_name: "User", foreign_key: "tenant_id"
end
