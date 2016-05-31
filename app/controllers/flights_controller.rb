class FlightsController < ApplicationController
  
  def index
    @airport_options = Airport.all.map { |a| [a.airport_code, a.id] }
    
    @flights = Flight.search(params[:departure_airport_id], 
                             params[:arrival_airport_id],
                             params[:departure_time]) 
                             
    @departure_options = Flight.date_list
		@passenger_options = [1,2,3,4]
		
		@departure_airport_choice = params[:departure_airport_id]
		@arrival_airport_choice = params[:arrival_airport_id]
		@passengers_choice = params[:passengers]
		@depart_date_choice = params[:departure_time]
    
  end
end


