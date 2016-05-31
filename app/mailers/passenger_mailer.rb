class PassengerMailer < ApplicationMailer
    default from: 'notifications@flightbooker.com'
    
    def thank_you_email(passenger)
        @passenger = passenger
        mail(to: @passenger.email, subject: "Flight confirmation")
    end
    
end
