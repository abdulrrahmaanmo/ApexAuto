class Car < ApplicationRecord
  has_many :bookings
  validates  :color, presence: true
  validates  :brand, presence: true
  validates  :fuel_type, presence: true
  validates  :bluetooth, inclusion: { in: [true, false] }
  validates  :automatic, inclusion: { in: [true, false] }
  validates  :price_per_day, presence: true
  validates  :seats, presence: true
  validates :seats, numericality: { only_integer: true }
end
