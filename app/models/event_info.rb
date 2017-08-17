class EventInfo < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :date, presence: true
  validates :venue, presence: true

  validates :safe_space_policy, presence: true
  validates :background, presence: true

  has_one :address, dependent: :destroy
end
