class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status, :links
  has_many :reviews

  def links
    { self: game_path(object.id) }
  end

end
