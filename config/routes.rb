Rails.application.routes.draw do

  get '/my_trips', to: 'dashboards#my_trips'
  get '/my_flats', to: 'dashboards#my_flats'
  get '/change_status', to: 'bookings#change_status'
  get '/change_status_decline', to: 'bookings#change_status_decline'

  resources :flats do
    resources :bookings
  end

  devise_for :users
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
