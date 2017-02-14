Rails.application.routes.draw do

  # Form to create a new task
  get '/tasks/new',to: 'tasks#new'
  # Post a new task
  post 'tasks', to: 'tasks#create'

  # Read all task
  get '/tasks', to: 'tasks#index'

  # Read one task
  get '/tasks/:id', to: 'tasks#show', as: 'tasks_id'

  # Form to edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'tasks_edit'
  # Patch to update and existing task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete an existing task
  delete '/tasks/:id', to: 'tasks#destroy', as: 'tasks_destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
