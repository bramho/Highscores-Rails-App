class GameHighscoresController < ApplicationController
   before_action :set_game

   def create
      @game_highscore = @game.game_highscores.create(game_highscore_params)
      @game_highscore.user_id = current_user.id

      redirect_to @game
   end

   def destroy
      @game_highscore = @game.game_highscores.find(params[:id])
      if @game_highscore.destroy
         flash[:success] = "Highscore was deleted."
      else
         flash[:error] = "Highscore could not be deleted."
      end

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
