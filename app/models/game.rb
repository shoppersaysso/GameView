class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_attributes, dependent: :destroy
  accepts_nested_attributes_for :game_attributes, allow_destroy: true

end
