class Review < ActiveRecord::Base
  belongs_to :game
  has_many :users, through: :game

  validates :title, :content, presence: true
end
