Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  resources :topics
  resources :users

  post '/new-task', to: 'tasks#new_task'
end
