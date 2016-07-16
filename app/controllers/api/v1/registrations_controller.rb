class Api::V1::RegistrationsController < Api::V1::BaseController

  def create
    @user = User.new(registration_params)

    if !@user.student? && !@user.teacher?
      @user.errors[:base] << 'Rol inválido'
    end

    if @user.errors.empty? && @user.save
      render json: @user, serializer: SessionSerializer, root: 'user'
    else
      render json: { user: @user, errors: @user.errors }
    end
  end

  private
    def registration_params
      params.require(:user).permit(
        :email,
        :password,
        :password_confirmation,
        :role
      )
    end
end
