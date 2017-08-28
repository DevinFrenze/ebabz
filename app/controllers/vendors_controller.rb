class VendorsController < ApplicationController
  def index
    Fest.order(:year).all.reverse.each do |fest|
      if fest.vendors.any?
        @year = fest.year
        @vendors = fest.vendors
        break
      end
    end
  end
end
