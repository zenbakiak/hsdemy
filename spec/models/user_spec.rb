require 'rails_helper'

RSpec.describe User, :type => :model do
  let (:user) { FactoryGirl.build :user }
  subject { user }

  describe '#validations' do
    it { should be_valid }
  end

  describe '#associations' do
    it { should have_many :enrollments }
    it { should have_many :courses }
  end


end
