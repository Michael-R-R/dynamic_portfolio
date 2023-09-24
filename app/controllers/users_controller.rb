class UsersController < ApplicationController
  
  before_action(:matches_login_user, only: [:show])

  def show
    @user = User.find(params[:id])
  end

  private

  def matches_login_user
    redirect_to(root_url) unless is_current_user?(current_user())
  end

end
