airports = [
  "SFO",
  "NYC",
  "BWI",
  "DEN",
]

airports.each do |code|
  Airport.create(airport_code: code)
end

Airport.all.each do |origin|
    20.times do
        Airport.all.each do |destination|
            next if origin == destination
            duration = rand(3..5)
            departure_time = Time.now + rand(250000)
            
            Flight.create(departure_airport_id: origin.id, arrival_airport_id: destination.id,
                          duration: duration, departure_time: departure_time)
        end
    end
end
            