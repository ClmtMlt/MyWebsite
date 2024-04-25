class Contact < ApplicationRecord
  PRODUCT = ["Market Place", "Web App", "Showcase WebSite"]
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :description, presence: true
  validates :known, presence: true, inclusion: { in: PRODUCT }
end
