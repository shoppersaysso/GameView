class GameSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :reviews
  has_many :details

end
