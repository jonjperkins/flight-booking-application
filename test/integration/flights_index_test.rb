require 'test_helper'

class FlightsIndexTest < ActionDispatch::IntegrationTest

  
  test "expected options are shown on root url" do 
    get root_url
    assert_template :index
    assert_select 'h1', "Where would you like to go?"
    assert_nil @flight
    get root_path(:index, params: { departure_airport_id: 1, arrival_airport_id: 2,
                  passengers: 3, departure_time: "2016-05-22 17:09:33" } )
  end
  
  
  
  
end
