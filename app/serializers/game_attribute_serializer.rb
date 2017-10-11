class GameAttributeSerializer < ActiveModel::Serializer
  attributes :id, :genre, :esrb_rating, :multiplayer
end
