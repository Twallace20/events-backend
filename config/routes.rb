Rails.application.routes.draw do
  resources :events
  resources :users
  resources :event_planners

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
