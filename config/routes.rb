Rails.application.routes.draw do


  root :to => 'pages#starthere'




  devise_for :users
  resources :tasks
  resources :projects
  resources :groups
 
  get '/groups/add/:id', :to => 'groups#add', :as => 'add_groups'
  get '/projects/add/:id', :to => 'projects#add', :as => 'add_projects'

  get '/pages/:page' => 'pages#show'

end
