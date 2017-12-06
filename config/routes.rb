Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  root 'home#index'

  get "/cultures" => "home#cultures"

  get "/characteristics" => "home#characteristics"

  resources :addresses

  resources :nationalities

  resources :idioms

  resources :macroregions

  resources :adrstypes

  resources :telephones

  resources :groups

  resources :publishers
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
