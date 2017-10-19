class GameSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status
  has_many :reviews
  has_many :details
=======
  attributes :id, :review_id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status, :is_multiplayer?
  has_many :details
  has_many :reviews

>>>>>>> final-touches

end
