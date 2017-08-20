class GeneralInfo < ApplicationRecord
  validates :history, presence: true
  validates :safe_space_policy, presence: true
end
