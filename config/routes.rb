DinnerDash::Application.routes.draw do
  resources :categories

  resources :items, only: [:index, :show]
end
