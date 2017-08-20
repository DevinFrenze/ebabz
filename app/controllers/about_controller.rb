class AboutController < ApplicationController
  def index
    @general_info = GeneralInfo.last || GeneralInfo.new
    @faqs = FAQ.all
  end
end
