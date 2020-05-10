Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hunt', to: 'application#hunt'
  resources :winners, only: [:create, :index]
  resources :puzzles, only: [:index, :show]
end
