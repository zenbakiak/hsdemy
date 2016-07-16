class Api::V1::Teachers::CoursesController < Api::V1::BaseController
  def index
    teacher = User.teacher.find(params[:teacher_id])
    render json: teacher.courses.search(params[:q])
  end
end
