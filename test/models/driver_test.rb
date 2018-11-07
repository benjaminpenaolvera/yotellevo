# frozen_string_literal: true

require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  setup do
    @driver_ok = drivers(:driver_ok)
    @driver_fail = drivers(:driver_fail)
  end

  test 'Driver can not be saved with empty values' do
    assert_not @driver_fail.save
  end

  test 'Driver can not be saved without name' do
    @driver_ok.name = nil
    assert_not @driver_ok.save
  end

  test 'Driver can not be saved without email' do
    @driver_ok.email = nil
    assert_not @driver_ok.save
  end

  test 'Driver can not be saved without phone number' do
    @driver_ok.phone_number = nil
    assert_not @driver_ok.save
  end

  test 'Driver can not be saved without address' do
    @driver_ok.address = nil
    assert_not @driver_ok.save
  end

  test 'Driver can not be saved with status true' do
    @driver_ok.status = true
    assert @driver_ok.save
  end

  test 'Driver can not be saved with status false' do
    @driver_ok.status = false
    assert @driver_ok.save
  end

  test 'Driver can be saved without observations' do
    @driver_ok.observations = nil
    assert @driver_ok.save
  end
end
