Rails.application.routes.draw do
  resources :projects, except: [:show]
  get 'angular-items', to: 'projects#angular'
  get 'project/:id', to: 'projects#show', as: 'project_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
