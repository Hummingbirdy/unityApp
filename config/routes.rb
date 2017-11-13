Rails.application.routes.draw do

  devise_for :users
  root to: 'groups#index'

  resources :tasks
  resources :projects
  resources :groups

  get '/pages/:page' => 'pages#show'
  get '/groups/add/:id', :to => 'groups#add', :as => 'add_groups'
  get '/projects/add/:id', :to => 'projects#add', :as => 'add_projects'

end
