class Fest < ApplicationRecord
  validates :year, presence: true, uniqueness: true

  has_many :fest_vendors
  has_many :vendors, through: :fest_vendors

  belongs_to :location, dependent: :destroy, optional: true
  belongs_to :application_form, dependent: :destroy, optional: true
  belongs_to :volunteer_form, dependent: :destroy, optional: true

  def to_s
    undefined = []
    defined = [ name_string ]

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

    string = ""
    string += "#{defined.join(", ")}" if defined.length > 0 && undefined.empty?
    string += "#{defined.join(", ")}, " if defined.length > 0 && undefined.any?
    string += "#{undefined.to_sentence} TBA" if undefined.length > 0
    string
  end

  def name_string
    "EBABZ Fest #{year}"
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
    date.strftime("%a, %B %e")
  end

  def location_string
    return "Location TBA" unless location.present?
    location.to_s
  end

  def has_application_form?
    application_form.present?
  end

  def has_volunteer_form?
    application_form.present?
  end
end
