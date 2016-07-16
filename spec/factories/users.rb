FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'changeme' }
    password_confirmation { 'changeme' }
  end

  factory :teacher, parent: :user do
    role { 'teacher' }
  end

  factory :student, parent: :user do
    role { 'student' }
  end

  factory :admin, parent: :user do
    role { 'admin' }
  end

end