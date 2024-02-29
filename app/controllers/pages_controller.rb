class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @locations = Location.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end

  def dashboard
    @bookings = current_user.bookings
    @usercars = current_user.cars
  end
end
