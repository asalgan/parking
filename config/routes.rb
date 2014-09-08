Rails.application.routes.draw do
  root to: 'parkingspots#index'

  resources :parkingspots

  match '/overlap' => 'parkingspots#overlap', via: [:get, :post]

end
