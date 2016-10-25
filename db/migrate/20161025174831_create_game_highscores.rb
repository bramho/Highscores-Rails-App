class CreateGameHighscores < ActiveRecord::Migration[5.0]
  def change
    create_table :game_highscores do |t|
      t.string :score
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
