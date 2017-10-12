class DetailsSerializer < ActiveModel::Serializer
  attributes :id, :developer, :genre, :esrb_rating, :multiplayer
  belongs_to :game, serializer: GameSerializer
  
end
