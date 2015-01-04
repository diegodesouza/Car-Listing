class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new(params[:id])
  end

  def create
    @car = Car.new(cars_params)

    if @car.save
      flash[:notice] = "You have successfully created a car"
      redirect_to cars_path
    else
      render 'new'
    end
  end

  private

  def cars_params
    params.require(:car).permit(:color, :year, :mileage, :description, :country, :manufacturer_id)
  end
end
