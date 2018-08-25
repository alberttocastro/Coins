RailsAdmin.config do |config|
  
  ### Popular gems integration
  
  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  
  ## == Cancan ==
  # config.authorize_with :cancan
  
  ## == Pundit ==
  # config.authorize_with :pundit
  
  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration
  
  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
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
    import
    
    ## With an audit adapter, you can add:
    # history_index
    # history_show
    
    config.model 'Address' do
      import do
        mapping_key_list [:neighborhood, :street, :nationality_id, :idiom_id, :name, :isvalid, :isvisitable, :isvisite, :adrstype_id, :comments, :references, :publisher_id, :macroregion_id, :group_id, :second_language, :card_number]
      end
    end
    
  end
end
