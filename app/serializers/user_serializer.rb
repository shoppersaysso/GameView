class UserSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :email, :gameview_level, :links
  has_many :reviews
  has_many :games

  def links
    { self: user_path(object.id) }
  end
=======
  attributes :id, :email, :level, :avatar
  has_many :reviews
  has_many :games

>>>>>>> final-touches

end
