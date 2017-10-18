class Game < ActiveRecord::Base
  belongs_to :user
  has_one :review
  validates :title, :developer, :genre, :esrb_rating, presence: true

  def is_multiplayer?
   self.multiplayer ? 'Multiplayer' : 'Single-Player'
  end

  def details
    details = "Developer: " + self.developer + ", Genre: " + self.genre + ", ESRB: " + self.esrb_rating + ", Multiplayer: " + self.is_multiplayer? + ", Status: " + self.status
    return details
  end
  
end
