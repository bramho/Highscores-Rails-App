class AddUserIdToGameHighscores < ActiveRecord::Migration[5.0]
  def change
    add_column :game_highscores, :user_id, :integer
  end
end
