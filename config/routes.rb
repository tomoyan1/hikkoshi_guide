Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks', 
    registrations: 'users/registrations'
  }
  
  root to: 'tasks#index'

  resources :tasks do
    collection do
      get :select_template
      post :bulk_create
    end
  end
end