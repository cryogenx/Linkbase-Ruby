Linkbase::Application.routes.draw do
  devise_for :users
  devise_for :installs
  root 'categories#index'

  resources :categories do
  	resources :links
  end
end
