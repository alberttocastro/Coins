Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords', unlocks: 'users/unlocks'}

  root 'home#login'
  get 'home', to: "home#index", as: :home
  get 'overview', to: "home#overview", as: :overview
  get 'assignments', to: "home#assignments", as: :assignments
  get 'login', to:'home#login', as: :login
  get 'view', to: 'home#view', as: :view
  get 'help', to: 'home#help', as: :help
  get 'management', to: 'home#management', as: :management
  get 'edit', to: 'home#edit', as: :edit
  
  post 'assignment/:id/declare_finished', to:"home#declare_concluded", as: :declare_concluded

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