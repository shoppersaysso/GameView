class Review < ActiveRecord::Base
  scope :most_recent, -> (limit) { order("created_at desc").limit(limit) }

  belongs_to :game
  has_many :users, through: :game

  validates :title, :content, presence: true

  def game_title
    return self.game
  end

end
