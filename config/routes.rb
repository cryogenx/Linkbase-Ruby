Linkbase::Application.routes.draw do
  devise_for :users
  resource :dashboard, :only => [:show]
  
  root 'static_pages#index'

  resources :categories
  resources :links


end
