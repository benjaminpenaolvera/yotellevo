# frozen_string_literal: true

require 'test_helper'

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_ok = drivers(:driver_ok)
  end

  test 'visit the index controller path' do
    get drivers_path

    assert_response :success
  end

  test 'visit the show controller path' do
    get driver_path(@driver_ok.id)

    assert_response :success
  end
end
