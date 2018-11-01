# frozen_string_literal: true

require 'test_helper'

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_ok = drivers(:driver_ok)
  end

  test 'index controller' do
    get drivers_path

    assert_response :success
  end

  test 'show controller' do
    get driver_path(@driver_ok)

    assert_response :success
  end

  test 'post create controller drivers' do
    params = {
      params: {
        driver: {
          name: "James",
          email: 'nomelose@gmail.com',
          phone_number: '21313123',
          address:'Algodon de azucar'
        }
      }
    }

    assert_difference 'Driver.count' do
      post drivers_url, params
      assert_redirected_to driver_path(Driver.last)
    end
  end

  test 'destroy controller' do
    assert_difference 'Driver.count', -1 do
      delete driver_path(@driver_ok)
      assert_redirected_to drivers_path
    end
  end
end
