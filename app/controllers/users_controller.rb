class UsersController < Clearance::UsersController
  def show
    @user = User.find_by(id: params[:id])
    @shouts = @user.shouts
  end
  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end