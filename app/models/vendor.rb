class Vendor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url,  presence: true, uniqueness: true, url: true

  has_many :event_vendors
  has_many :events, through: :event_vendors
end
