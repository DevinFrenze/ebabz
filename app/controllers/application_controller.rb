class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_fest

  def set_fest
    @fest = Fest.last || Fest.new
  end
end
