class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :course
end
