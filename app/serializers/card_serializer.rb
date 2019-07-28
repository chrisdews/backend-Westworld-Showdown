class CardSerializer < ActiveModel::Serializer
  
  attributes :id, :imageurl, :name, :description, :apperception, :charm, :aggression
end
