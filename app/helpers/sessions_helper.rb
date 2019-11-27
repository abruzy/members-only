# frozen_string_literal: true

module SessionsHelper
  def sign_in(user)
    token = SecureRandom.urlsafe_base64
    user.remember_token = Digest::SHA1.hexdigest(token.to_s)
    user.save

    cookies.permanent[:token] = {
      value: token,
      domain: '127.0.0.1:3000',
      expires: 1.day.from_now.utc
    }
    get_current_user(user)
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def get_current_user(user)
    cookie_token = cookies[:token]
    remember_token = user.remember_token
    cookie_token == remember_token ? user : 'not you bro'
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end
