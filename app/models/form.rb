class Form < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :form, presence: true

  def start_date_string
    start_date.strftime("%B %e")
  end

  def end_date_string
    end_date.strftime("%B %e")
  end

  def is_open?
    start_date < DateTime.now && end_date > DateTime.now
  end

  def is_in_future?
    start_date > DateTime.now
  end

  def is_in_past?
    end_date < DateTime.now
  end
end
