Linkbase::Application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  resource :dashboard, :only => [:show]
  get "linkbases" => "linkbases#show"
  resources :linkbases, :only => [:show]

  
  root 'static_pages#index'

  resources :categories
  resources :links


end
