class Fest < ApplicationRecord
  validates :year, presence: true, uniqueness: true

  has_many :fest_vendors
  has_many :vendors, through: :fest_vendors

  belongs_to :location, dependent: :destroy, optional: true

  belongs_to :application_form,
    class_name: 'Form',
    dependent: :destroy,
    optional: true,
    foreign_key: 'application_form_id'

  belongs_to :volunteer_form,
    class_name: 'Form',
    dependent: :destroy,
    optional: true,
    foreign_key: 'volunteer_form_id'

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

  def is_application_period?
    has_application_form? && application_form.is_open?
  end

  def is_before_application_period?
    has_application_form? && application_form.is_in_future?
  end

  def is_after_application_period?
    has_application_form? && application_form.is_in_past?
  end

  def has_volunteer_form?
    application_form.present?
  end

  def is_volunteer_period?
    has_volunteer_form? && volunteer_form.is_open?
  end

  def application_past_string
    close = application_form.end_date_string
    "Applications closed on #{close}"
  end

  def application_future_string
    open = application_form.start_date_string
    close = application_form.end_date_string
    "Applications will be open from #{open} to #{close}"
  end
end
