class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  belongs_to :location

  validates :start_date, presence: true, uniqueness: { scope: :car, message: "Dates Unavailable" }
  validates :end_date, presence: true
end
