class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_fest
  layout 'basic_page'

  def set_fest
    @fest = Fest.order(:year).last || Fest.new
  end
end
