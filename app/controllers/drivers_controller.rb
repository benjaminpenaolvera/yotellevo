# frozen_string_literal: true

class DriversController < ApplicationController
  before_action :set_driver, only: %i[show destroy edit update]

  def index
    @drivers = Driver.all
  end

  def show; end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)

    if @driver.save
      flash[:success] = 'Conductor creado con exito!'
      redirect_to @driver
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @driver.update_attributes(driver_params)
      flash[:success] = "El conductor #{@driver.name} ha sido actualizado"
      redirect_to @driver
    else
      render 'edit'
    end
  end

  def destroy
    flash[:success] = driver_destroyed if @driver.destroy
    redirect_to drivers_path
  end

  private

  def driver_destroyed
    "El conductor #{@driver.name} ha sido eliminado con exito"
  end

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
