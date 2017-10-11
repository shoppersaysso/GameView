class Game < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :title, :developer, :genre, :esrb_rating, presence: true

  def is_multiplayer?
   self.multiplayer ? 'Multiplayer' : 'Single-Player'
  end
 
end
