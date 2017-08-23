class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_attributes
  accepts_nested_attributes_for :game_attributes

end
