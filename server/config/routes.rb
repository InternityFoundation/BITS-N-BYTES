Rails.application.routes.draw do
  get 'location/index'
  get 'pages/index'
  post 'feedback', to: 'location#create_feedback'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :api do
    namespace :v1 do
      get 'locations', to: 'get_nearby#get_locations'
      get 'feedbacks', to: 'get_nearby#get_feedbacks'
    end
  end

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
