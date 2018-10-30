# frozen_string_literal: true

class DriversController < ApplicationController
  before_action :set_driver, only: [:show]

  def index
    @drivers = Driver.all
  end

  def show; end

  private

  def set_driver
    @driver = Driver.find(params[:id])
  end
end
