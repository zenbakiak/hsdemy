require 'rails_helper'

RSpec.describe Api::V1::SessionsController, :type => :controller do

  describe "POST create" do
    student = FactoryGirl.create(:student)
    it "returns http success" do
      post :create, user: { email: student.email, password: 'changeme' }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Signup student' do
    it 'return email and token' do
      student = FactoryGirl.create(:student)
      post :create, user: { email: student.email, password: 'changeme' }
      expect(json_response[:user]).to_not eq(nil)
      expect(json_response[:user][:email]).to eq(student.email)
      expect(json_response[:user][:token]).to_not eq(nil)
    end

  end


end
