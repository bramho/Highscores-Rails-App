class Game < ApplicationRecord
   has_many :game_highscores
   belongs_to :user
end
