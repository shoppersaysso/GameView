class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :gameview_level
  has_many :reviews
  has_many :games


end
