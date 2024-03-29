Rails.application.routes.draw do
  get 'applications/index'
  get 'applications/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/restaurants', to: 'restaurants#index', as: :restaurants

  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  get '/waiters', to: 'waiters#index', as: :waiters

  get '/waiters/:id', to: 'waiters#show', as: :waiter

  get '/applications', to: 'applications#index', as: :applications
  patch '/application/:id', to: 'applications#update', as: :application


  get '/profile', to: 'users#show', as: :user

  get '/profile/edit', to: 'users#edit'
  patch '/profile', to: 'users#update'

  post '/restaurants/:id/', to: 'applications#create', as: :apply
  post '/waiter/:id/', to: 'applications#create_by_resto', as: :apply_resto

  patch '/booking/:id/confirm', to: 'users#approve', as: :approve
  patch '/booking/:id/reject', to: 'users#reject', as: :reject

  resources :chatrooms, only: [:new, :show, :create, :index] do
    resources :messages, only: :create
  end
end
