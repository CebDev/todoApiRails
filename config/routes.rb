Rails.application.routes.draw do

  resources :todos
  match 'todos', to: 'todos#destroy_all', via: :delete
  root 'todos#index'

end
