Rails.application.routes.draw do
  devise_for :users
  resources :games do
     resources :game_highscores
  end

  root 'games#index'

end
