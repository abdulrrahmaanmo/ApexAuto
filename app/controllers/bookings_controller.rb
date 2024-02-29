class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    if @booking.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to list_path(@booking.dashboard), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :location_id)
  end
end
