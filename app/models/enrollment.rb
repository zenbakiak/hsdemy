class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course, counter_cache: true

  validates :course_id, uniqueness: { scope: :user,
                                      message: "already enrolled" }
end
