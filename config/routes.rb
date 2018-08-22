Rails.application.routes.draw do
  resources :languages
  resources :writers
  resources :stories

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  get '/stories/:id/beginning', to: 'stories#beginning', as: 'beginning'
  post '/stories/:id/beginning', to: 'stories#savebeginning'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
