class Game < ActiveRecord::Base
  belongs_to :user
  has_many :games_game_attributes
  has_many :game_attributes, through: :games_game_attributes, dependent: :destroy
  accepts_nested_attributes_for :game_attributes, allow_destroy: true
  has_many :reviews

  validates :title, :developer, presence: true

end
