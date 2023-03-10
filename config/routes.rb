Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # LIST TASKS
  get "/tasks", to: "tasks#index"

  # ADD A NEW TASK
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"

  # VIEW DETAILS OF TASK
  get "/tasks/:id", to: "tasks#details", as: "task"

  # EDIT A TASK
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "/tasks/:id", to: "tasks#update"

  # REMOVE A TASK
  delete "/tasks/:id", to: "tasks#destroy"
end
