class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:student, :teacher, :admin]

  has_many :courses, class_name: 'Course', foreign_key: 'teacher_id'

  has_many :enrollments

end
