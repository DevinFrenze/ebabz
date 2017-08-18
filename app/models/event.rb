class Event < ApplicationRecord
  validates :year, presence: true, uniqueness: true
  validates :active, presence: true

  has_many :event_vendors
  has_many :vendors, through: :event_vendors

  has_one :address, dependent: :destroy
  has_one :apply, dependent: :destroy
  has_one :volunteer, dependent: :destroy
end
