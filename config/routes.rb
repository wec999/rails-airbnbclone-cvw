Rails.application.routes.draw do

  get '/my_trips', to: 'dashboards#my_trips'
  get '/my_flats', to: 'dashboards#my_flats'
  patch '/bookings/:id/approve', to: 'bookings#change_status_approve', as: 'booking_approve'
  patch '/bookings/:id/decline', to: 'bookings#change_status_decline', as: 'booking_decline'

  resources :flats do
    resources :bookings
  end

  devise_for :users, :controllers => {registrations: 'registrations'}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
