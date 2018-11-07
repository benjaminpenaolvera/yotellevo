# frozen_string_literal: true

class ApplicationController < ActionController::Basek
  def after_sign_in_path_for(*)
    users_path(current_user.id)
  end
end
