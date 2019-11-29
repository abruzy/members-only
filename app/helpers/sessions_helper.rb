# frozen_string_literal: true

module SessionsHelper
  def sign_in(user)
    token = user.new_token
    user.remember_token = token
    upda
    user.save

    cookies.permanent[:tofel] = {
      value: token,
      domain: '127.0.0.1:3000',
      expires: 1.day.from_now.utc
    }
    assign_current_user(user)
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def assign_current_user(user)
    session[:user_id] = user.id
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end
