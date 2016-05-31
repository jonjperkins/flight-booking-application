class PassengerMailer < ApplicationMailer
    default from: 'notifications@flightbooker.com'
    
    def thank_you_email(passenger)
        @passenger = passenger
        @url = 'http://example.com/login'
        mail(to: @passenger.email, subject: "Thank you for booking a flight!")
    end
    
end
