class UsersController < ApplicationController

  def show
    user = User.find(params[:id])

    if is_current_user?(user)
      @user = user
    else
      redirect_to(root_url)
    end
  end

end
