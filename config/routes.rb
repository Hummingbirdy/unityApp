Rails.application.routes.draw do
  resources :tasks
  resources :projects
  resources :groups

  get "/groups/add/:id", :to => "groups#add", :as => 'add_groups'
  get "/projects/add/:id", :to => "projects#add", :as => 'add_projects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
