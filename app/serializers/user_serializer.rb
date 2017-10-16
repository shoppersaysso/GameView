class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :level, :avatar_remote_url
  has_many :reviews
  has_many :games


end
