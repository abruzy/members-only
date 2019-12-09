# frozen_string_literal: true

module SessionsHelper
  def sign_in(user)
    remember_token = User.new_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.digest(remember_token))
    current_user
  end

  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.digest(User.new_token))
    cookies.delete(:remember_token)
    @current_user = nil
  end

  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def signed_in?
    current_user.present?
  end

  def require_login
    unless signed_in?
      flash[:error] = 'You must be logged in to access this section'
      redirect_to signin_url # halts request cycle
    end
  end
end
