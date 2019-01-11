Rails.application.routes.draw do
  get 'location/index'
  get 'pages/index'
  post '/feedback', to: 'location#create_feedback'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
