class Event < ApplicationRecord
  validates :year, presence: true, uniqueness: true
  validates :active, presence: true

  has_many :event_vendors
  has_many :vendors, through: :event_vendors

  has_one :address, dependent: :destroy
  has_one :apply, dependent: :destroy
  has_one :volunteer, dependent: :destroy

  def event_string
    undefined = []
    defined = []

    if has_date?
      defined.push(date.strftime("%A, %B %e"))
    else
      undefined.push("Date")
    end

    if has_time?
      start = start_time.strftime("%l %p").downcase
      stop = end_time.strftime("%l %p").downcase
      defined.push("#{start} to #{stop}")
    else
      undefined.push("Time")
    end

    if has_venue?
      defined.push(venue)
    else
      undefined.push("Location")
    end

    string = ""
    string += "#{defined.join(", ")}" if defined.length > 0 && undefined.empty?
    string += "#{defined.join(", ")}, " if defined.length > 0 && undefined.any?
    string += "#{undefined.to_sentence} TBA" if undefined.length > 0
    string
  end

  def has_time?
    start_time.present? || end_time.present?
  end

  def has_date?
    date.present?
  end

  def has_venue?
    !venue.blank?
  end
end
