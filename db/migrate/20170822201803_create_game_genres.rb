class CreateGameGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :game_genres do |t|
        t.integer :genre_id
        t.integer :game_id
      t.timestamps
    end
  end
end
