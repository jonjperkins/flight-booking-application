class Passenger < ActiveRecord::Base
    has_many :flights, through: :passenger_bookings
    has_many :bookings, through: :passenger_bookings
    has_many :bookings
end
