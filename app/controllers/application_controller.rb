class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_event

  def set_event
    @event = Event.first
  end
end
