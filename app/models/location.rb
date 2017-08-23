class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true

  def address_string
    "#{street}, #{city}, #{state}"
  end

  def city_string
    "#{city}, #{state}"
  end
end
