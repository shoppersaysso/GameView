class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status
  has_many :reviews
  has_many :details
  #
  # def links
  #   { self: game_path(object.id) }
  # end


end
