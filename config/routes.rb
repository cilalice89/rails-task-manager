Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # give me all tasks/as tasks
  get "tasks", to: "tasks#index", as: :tasks

  # give me a form to add a task that i can fill with new method
  get    "tasks/new",      to: "tasks#new", as: :new
  #  push my new task to the database with create method
  post   "tasks",          to: "tasks#create"
  # give me one task by id/as task
  get    "tasks/:id",      to: "tasks#show", as: :task
  # give me a form to edit for a specific task
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  # push my updated task on database  with update method
  patch  "tasks/:id",      to: "tasks#update"
  #  remove a task
  delete "tasks/:id" , to: "tasks#destroy"
end
