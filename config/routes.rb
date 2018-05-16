Rails.application.routes.draw do

  get 'dashboard', to: 'dashboard#show'
  resources :flats do
    resources :bookings
  end

  devise_for :users
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
