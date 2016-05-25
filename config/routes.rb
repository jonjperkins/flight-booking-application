Rails.application.routes.draw do
  root              'flights#index'
  get   'about' =>  'static_pages#about'
  resources :bookings
end
