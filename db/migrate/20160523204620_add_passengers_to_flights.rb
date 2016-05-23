class AddPassengersToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :passengers, :integer
  end
end
