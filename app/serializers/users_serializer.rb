class UsersSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :image_url
  
end
