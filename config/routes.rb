Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  resource :tasks, only: [:index, :create, :destroy]

  patch '/toggle-is-done', to: 'tasks#toggle_is_done', as: 'toggle_is_done'

end
