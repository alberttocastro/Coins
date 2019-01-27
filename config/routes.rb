Rails.application.routes.draw do
  
  root 'home#login'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords', unlocks: 'users/unlocks'}

  get 'home', to: "home#home", as: :home
  post 'home/add_new_suggested', to: 'home#create_suggested_address', as: :create_suggested_address
  post 'home/report_visit', to: 'home#receive_report_from_address_worked', as: :receive_report

  get 'login', to:'home#login', as: :login
  get 'view', to: 'home#view', as: :view
  get 'edit', to: 'home#edit', as: :edit
  
  get 'overview', to: "overview#overview", as: :overview
  
  get 'assignments', to: "assignment#assignments", as: :assignments
  post 'assignments/:id/declare_finished', to:"home#declare_concluded", as: :declare_concluded
  post 'assignments/:card_id/finish_all_card_assignments', to:'assignment#finish_all_card_assignments', as: :finish_all_card_assignments
  
  get 'help', to: 'help#help', as: :help
  
  get 'management', to: 'management#management', as: :management
  post 'management/accept_suggestion', to:"home#accept_suggestion", as: :accept_suggestion

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  # get 'home/index'
  # get 'welcome/index'
  # get "/cultures" => "home#cultures"
  # get "/characteristics" => "home#characteristics"
  # get "/unassigned" => "cards#unassigned"
  # get "/print" => "cards#print"
  # resources :addresses
  # resources :nationalities
  # resources :idioms
  # resources :macroregions
  # resources :adrstypes
  # resources :telephones
  # resources :groups
  # resources :publishers
  # resources :cards
  # resources :visits