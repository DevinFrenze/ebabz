class Vendor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url,  presence: true, uniqueness: true, url: true

  has_many :fest_vendors
  has_many :fests, through: :fest_vendors
end
