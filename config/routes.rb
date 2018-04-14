Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords', unlocks: 'users/unlocks'}

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
