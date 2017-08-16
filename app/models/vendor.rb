class Vendor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url,  presence: true, uniqueness: true, url: true
  validates :year, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 2016
  }
end
