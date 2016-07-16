class Api::V1::TeachersController < Api::V1::BaseController

  def index
    render json: User.teacher.all
  end

  def show
    render json: User.teacher.find(params[:id]), serializer: TeacherSerializer
  end
end
