Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  devise_for :users
  devise_scope :user do
  root to: "devise/sessions#new"
end
	resources :users

  resources :albums

  resources :pictures
 
end
