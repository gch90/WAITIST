Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/restaurants', to: 'restaurants#index', as: :restaurants

  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  get '/waiters', to: 'waiters#index', as: :waiters

  get '/waiters/:id', to: 'waiters#show', as: :waiter

end
