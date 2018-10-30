# frozen_string_literal: true

class DriversController < ApplicationController
  before_action :set_driver, only: %i[show destroy]

  def index
    @drivers = Driver.all
  end

  def show; end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)

    @driver.save
    redirect_to @driver
  end

  def destroy
    @driver.destroy

    redirect_to drivers_path
  end

  private

  def set_driver
    @driver = Driver.find(params[:id])
  end

  def driver_params
    params.require(:driver).permit(:name,
                                   :email,
                                   :phone_number,
                                   :address,
                                   :observations,
                                   :status)
  end
end
