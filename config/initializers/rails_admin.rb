RailsAdmin.config do |config|

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.excluded_models << "Admin" << "FestVendor"

  config.model 'Address' do
    visible false
  end

  config.model 'ApplicationForm' do
    visible false
  end

  config.model 'VolunteerForm' do
    visible false
  end
end
