class UsersController < ApplicationController

  def show
    user = User.find(params[:id])

    if authenticate_user?(user)
      @user = user
    else
      redirect_to(root_url)
    end

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end
