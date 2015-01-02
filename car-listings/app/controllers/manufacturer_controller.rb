class ManufacturerController < ApplicationController
  def index
    @manufacturer = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end
end
