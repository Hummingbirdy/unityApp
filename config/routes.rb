Rails.application.routes.draw do
  get 'pages/show'

  resources :tasks
  resources :projects
  resources :groups

 
  get "/groups/add/:id", :to => "groups#add", :as => 'add_groups'
  get "/projects/add/:id", :to => "projects#add", :as => 'add_projects'
<<<<<<< HEAD

 


=======
  get '/pages/:page' => 'pages#show'
>>>>>>> e5aa3e7368b62c7e6818d2d30e8ced53cb2f1700
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
