Rails.application.routes.draw do
  get 'sessions/delete'

  resources :payments
  resources :transactions
  resource :session
  resources :llamas
  resources :vikings
  resources :artisans

  root "llamas#index"
end
