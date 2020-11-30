Rails.application.routes.draw do
  get 'users/show'
  get 'users/update'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'profile', to: 'users#show'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :show, :update ]
    end
  end
end