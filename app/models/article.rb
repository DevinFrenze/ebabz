class Article < ApplicationRecord
  validates :publication, presence: true
  validates :title, presence: true
  validates :url,  presence: true, uniqueness: true, url: true
  validates :year, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 2010
  }
end
