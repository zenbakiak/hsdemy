class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :limit, presence: true,
                    numericality: { greater_than: 1 }

  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :enrollments
  has_many :users, through: :enrollments

  scope :search, lambda { |q = ""|
    where("name ILIKE ?", "%#{q}%")
  }
end
