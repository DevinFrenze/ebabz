class AboutController < ApplicationController
  def index
    @safe_space = SafeSpace.last
    @faqs = FAQ.all
  end
end
