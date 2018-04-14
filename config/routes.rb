Rails.application.routes.draw do
  devise_for :users, controllers: {, controllers: { sessions: 'user/sessions', registrations: 'user/registrations', confirmations: 'user/confirmations', passwords: 'user/passwords', unlocks: 'user/unlocks', :omniauth_callbacks => "user/omniauth_callbacks"}}

  get 'home/index'

  get 'welcome/index'

  root 'home#index'

  get "/cultures" => "home#cultures"

  get "/characteristics" => "home#characteristics"

  get "/unassigned" => "cards#unassigned"

  get "/print" => "cards#print"

  resources :addresses

  resources :nationalities

  resources :idioms

  resources :macroregions

  resources :adrstypes

  resources :telephones

  resources :groups

  resources :publishers

  resources :cards

  resources :visits
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
