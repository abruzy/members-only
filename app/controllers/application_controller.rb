# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user
end
