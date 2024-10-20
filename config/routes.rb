Rails.application.routes.draw do
  resources :data_points, only: [:index, :new, :create]
  root 'data_points#index'
end
