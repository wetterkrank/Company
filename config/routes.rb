# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  
  root to: 'pages#home'
  get 'profile', to: 'users#show'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :update ]
    end
  end
end
