Linkbase::Application.routes.draw do
  devise_for :users
  devise_for :installs
  root 'links#index'
end
