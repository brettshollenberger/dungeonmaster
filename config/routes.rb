Dungeonmaster::Application.routes.draw do
  devise_for :users

  resources :characters do
    resources :pets
  end

  root to: "characters#index"
end
