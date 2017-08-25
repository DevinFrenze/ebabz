class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true

  def to_s
    "#{name}, #{street}, #{city_string}"
  end

  def city_string
    "#{city}, #{state}"
  end
end
