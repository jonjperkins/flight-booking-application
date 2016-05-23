class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.integer :duration
      t.timestamp :departure_time

      t.timestamps null: false
    end
  end
end
