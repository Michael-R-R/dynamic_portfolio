module SessionsHelper

  def log_in(user)
    reset_session
    session[:user_id] = user.id
  end

  def log_out
    reset_session
    @current_user = nil
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def is_current_user?(user)
    if logged_in? && (user.id == current_user.id)
      true
    else
      false
    end
  end
  
end
