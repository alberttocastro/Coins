Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  root 'home#index'

  resources :addresses
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
