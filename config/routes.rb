DevWebsite::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"
  
  match "about" => "about#show"
  
  resources :blogs
  resources :portfolios
  resources :about
  resources :contacts
  
  
end
