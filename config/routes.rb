Rails.application.routes.draw do
  get 'location/index'
  get 'pages/index'

  get 'pages/about' => 'pages/about'
  get 'pages/contact' => 'pages/contact'
  
  post 'feedback', to: 'location#create_feedback'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :api do
    namespace :v1 do
      get 'locations', to: 'get_nearby#get_locations'
      get 'feedbacks', to: 'get_nearby#get_feedbacks'
    end
  end

  root 'pages#index'
end
