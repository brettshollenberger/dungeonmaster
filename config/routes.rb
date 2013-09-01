Dungeonmaster::Application.routes.draw do
  devise_for :users

  resources :characters do
    resources :pets
  end

  resources :moves

  root to: "characters#index"
end
