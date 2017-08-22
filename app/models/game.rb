class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_genres
  has_many :genre, through: :game_genres
end
