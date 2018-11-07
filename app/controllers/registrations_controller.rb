# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(*)
    edit_user_path(current_user.id)
  end
end
