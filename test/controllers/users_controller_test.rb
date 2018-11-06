# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user_ok = users(:user_ok)
  end

  test 'index controller' do
    sign_in @user_ok

    get users_path

    assert_response :success
  end
end
