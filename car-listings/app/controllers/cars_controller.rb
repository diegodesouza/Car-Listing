class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car = Car.new(params[:id])
    @car.manufacturer = @manufacturer
  end

  def create
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car = Car.new(cars_params)
    @car.manufacturer = @manufacturer

    if @car.save
      flash[:notice] = "You have successfully created a car"
      redirect_to manufacturer_cars_path
    else
      render 'new'
    end
  end

  private

  def cars_params
    params.require(:car).permit(:make, :color, :year, :mileage, :description, :country)
  end
end
