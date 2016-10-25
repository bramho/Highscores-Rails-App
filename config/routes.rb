Rails.application.routes.draw do
  resources :games do
     resources :game_highscores
  end

  root 'games#index'

end
