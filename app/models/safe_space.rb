class SafeSpace < ApplicationRecord
  validates :body, presence: true
end
