class GameAttribute < ActiveRecord::Base
  has_many :games_game_attributes
  has_many :games, through: :games_game_attributes

end
