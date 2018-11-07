# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user_ok = users(:user_ok)
  end

  test 'get index controller user' do
    sign_in @user_ok

    get users_path

    assert_response :success
  end

  test 'put update controller user' do
    sign_in @user_ok

    params = {
      params: {
        user: {
          name: 'Josué Felipe',
          business_name: 'jf@ytl.com'
        }
      }
    }

    put user_path(@user_ok), params

    @user_ok.reload

    assert_redirected_to @user_ok
    assert_equal params[:params][:user][:name], @user_ok.name
  end
end
