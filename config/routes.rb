Rails.application.routes.draw do
  get '/login', to: 'sesstions#new'
  post '/login', to: 'sesstions#create'
  delete '/logout', to: 'sesstions#destroy'
  root to: 'tasks#index'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
