class BookingsController < ApplicationController
    
    def new
      @flight = Flight.find(params[:flight_id])
      #controller builds number of children equal to passengers param, eg 'passenger number' sets of passenger forms being rendered on booking object 
      @booking = Booking.new
      params[:passengers].to_i.times { @booking.passengers.build } #see rails guides form helpers 9.3 
    end
    
    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        @booking.passengers.each do |passenger|
          PassengerMailer.thank_you_email(passenger).deliver_now
        end
      flash[:success] = "Success!"
      redirect_to @booking
      else
        @flight = Flight.find(params[:flight_id])
        
        render 'new'
      end
    end
    
    def show
      @booking = Booking.find(params[:id])
    end
    
    private
    
      def booking_params
          params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
      end
    
end
