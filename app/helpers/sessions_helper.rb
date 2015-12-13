module SessionsHelper
  def log_in(user, via = :password)
    session[:user_id]   = user.id
    session[:login_via] = via
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def password_login?
    current_user.present? && (session[:login_via] == :password)
  end

  def u2f_login?
    current_user.present? && (session[:login_via] == :u2f)
  end

  def log_out
    session.destroy
    @current_user = nil
  end

  def authenticate_user!
    unless current_user.present?
      redirect_to '/login'
    end
  end

  def user_session
    session
  end

  def signed_in_root_path(_)
    root_path
  end

  def after_sign_in_path_for(_)
    secret_path
  end

  def user_signed_in?
    @current_user.present?
  end
end

# dummy for device
module Devise
  module Controllers
    module Helpers
    end
  end
end
