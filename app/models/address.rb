class EventInfo < ApplicationRecord
  belongs_to :event_info

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true,
end
