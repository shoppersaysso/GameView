class GameSerializer < ActiveModel::Serializer
  attributes :id, :review_id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status, :is_multiplayer?
  has_many :details
  has_many :reviews


end
