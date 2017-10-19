class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :level, :avatar
  has_many :reviews
  has_many :games


end
