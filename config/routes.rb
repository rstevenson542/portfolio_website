DevWebsite::Application.routes.draw do
  root :to => "home#index"
  
  match "about" => "about#show"
  
  resources :blogs
  resources :portfolios
  resources :about
  resources :contacts
  
  
end
