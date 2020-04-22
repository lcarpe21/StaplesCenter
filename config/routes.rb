Rails.application.routes.draw do
  get 'about_us/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'welcome/index'
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'signout', to: 'sessions#destroy', as: 'logout'
  
  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
