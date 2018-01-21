Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  resources :pictures

  authenticated :user do 
  	root 'pictures#index', as: "authenticated_root"
  end

  root 'welcome#index'
 
end
