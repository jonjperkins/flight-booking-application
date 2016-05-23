class Flight < ActiveRecord::Base
    belongs_to :departure_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"
    
  def self.search(depart, arrival, date)
		Flight.where(departure_airport_id: depart, 
					 arrival_airport_id: arrival,
					 departure_time: Flight.correct_date(date)) #searches all flights for days matching departure_time's day
  end
  
  def self.date_list
		dates = Flight.all.order(departure_time: :asc)
		dates.map {|n| n.departure_time.strftime("%d/%m/%Y") }.uniq
  end

  def self.correct_date(date)
		unless date.nil?
		    # convert returned string to a date value that we can use with the below methods
			date = date.to_date
			# use this date value to create a range from midnight to midnight on that day
			date.beginning_of_day..date.end_of_day
		end
  end	

    
end
