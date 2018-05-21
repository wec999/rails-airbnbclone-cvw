Rails.application.routes.draw do

  get '/my_trips', to: 'dashboards#my_trips'
  get '/my_flats', to: 'dashboards#my_flats'
  patch '/bookings/:id/approve', to: 'bookings#change_status_approve', as: 'booking_approve'
  patch '/bookings/:id/decline', to: 'bookings#change_status_decline', as: 'booking_decline'
  get '/home', to: 'pages#home', as: 'home'

  resources :flats do
    resources :bookings  do
      resources :reviews, only: [:new, :create]
    end
  end

  devise_for :users, :controllers => {registrations: 'registrations'}
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
