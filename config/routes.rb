Dungeonmaster::Application.routes.draw do
  devise_for :users

  resources :characters

  root to: "application#index"
end
