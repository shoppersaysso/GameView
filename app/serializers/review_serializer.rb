class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :game_title
  belongs_to :game, serializer: GameSerializer
  # belongs_to :user, serializer: UserSerializer

end
