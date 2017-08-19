class Event < ApplicationRecord
  validates :year, presence: true, uniqueness: true

  has_many :event_vendors
  has_many :vendors, through: :event_vendors

  belongs_to :address, dependent: :destroy, optional: true
  belongs_to :application_form, dependent: :destroy, optional: true
  belongs_to :volunteer_form, dependent: :destroy, optional: true

  def event_string
    undefined = []
    defined = []

    if has_date?
      defined.push(date_string)
    else
      undefined.push("Date")
    end

    if has_time?
      defined.push(time_string)
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

  def time_string
    return "Time TBA" unless has_time?
    start = start_time.strftime("%l %p").downcase
    stop = end_time.strftime("%l %p").downcase
    "#{start} to #{stop}"
  end

  def has_date?
    date.present?
  end

  def date_string
    return "Date TBA" unless has_date?
    date.strftime("%A, %B %e")
  end

  def has_venue?
    !venue.blank?
  end

  def venue_string
    return "Location TBA" unless has_venue?
    venue
  end
end
