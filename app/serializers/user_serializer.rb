class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email,:username, :created_at
end
