class GameHighscoresController < ApplicationController
   before_action :set_game

   def create
      @game_highscore = @game.game_highscores.create(game_highscore_params)
      redirect_to @game
   end

   private

   def set_game
      @game = Game.find(params[:game_id])
   end

   def game_highscore_params
      params[:game_highscore].permit(:score)
   end

end
