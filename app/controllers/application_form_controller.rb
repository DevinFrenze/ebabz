class ApplicationFormController < ApplicationController
  def index
    raise ActiveRecord::RecordNotFound unless @fest.has_application_form?
  end
end
