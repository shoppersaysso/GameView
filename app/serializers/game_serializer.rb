class GameSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :details
  has_many :reviews


end
