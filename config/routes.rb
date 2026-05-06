Rails.application.routes.draw do
  root to: 'tasks#index'
  devise_for :users
  resources :tasks do
   collection do
     get :select_template
     post :bulk_create
   end
  end
end
