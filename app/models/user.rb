class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:student, :teacher, :admin]

  has_many :courses, class_name: 'Course', foreign_key: 'teacher_id'

  has_many :enrollments

  before_create :ensure_token

  def ensure_token
    begin
      self.token = Devise.friendly_token(10)
    end while self.class.exists?(token: self.token)
  end

end
