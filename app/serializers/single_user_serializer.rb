class SingleUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name
end
