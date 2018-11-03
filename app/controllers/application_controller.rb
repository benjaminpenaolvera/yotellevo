# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    edit_user_path(current_user)
  end
end
