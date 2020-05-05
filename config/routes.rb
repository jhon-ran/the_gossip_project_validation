Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :gossips 
  
  root 'welcome#index'

  
end
