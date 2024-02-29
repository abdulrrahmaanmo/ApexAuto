class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @cars = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :color, :fuel_type, :price_per_day, :automatic, :bluetooth, :seats, photos: [])
  end
end
