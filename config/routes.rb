Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :gossips 
  
  root 'welcome#index'

  # nested comments in articles
  resources :gossips do
    resources :comments
  end

end
