class Address < ApplicationRecord
  belongs_to :event

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
end
