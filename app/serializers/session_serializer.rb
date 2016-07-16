class SessionSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :token,
             :role
end
