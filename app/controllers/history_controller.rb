class HistoryController < ApplicationController
  def index
    @general_info = GeneralInfo.last || GeneralInfo.new
    @articles = Article.all.sort_by {|a| a.year}.reverse
    @past_fests = Fest.where.not(id: @fest.id)
  end
end
