Rails.application.routes.draw do

  get 'bookings/index'

  resources :bookings

  root 'bookings#index'

end
