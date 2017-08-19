class HistoryController < ApplicationController
  def index
    @history = History.last
    @articles = Article.all.sort_by {|a| a.year}
    @past_events = Event.where.not(id: @event.id)
  end
end
