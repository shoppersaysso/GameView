class ReviewSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :title, :content
  belongs_to :game, serializer: GameSerializer
  belongs_to :user, serializer: UserSerializer
=======
  attributes :id, :title, :content, :game_title
  belongs_to :game, serializer: GameSerializer
  belongs_to :user, serializer: UserSerializer

>>>>>>> final-touches
end
