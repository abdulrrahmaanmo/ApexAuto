class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :start_date, presence: true, uniqueness: { scope: :car, message: "Dates Unavailable" }
  validates :end_date, presence: true
  validates :pick_up_location, presence: true
  validates :return_location, presence: true
end
