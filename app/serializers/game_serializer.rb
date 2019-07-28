class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :score

  # def user
  #   UserSerializer.new(self.object.user)
  # end
end
