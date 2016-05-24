class AddNameAndEmailToPassengers < ActiveRecord::Migration
  def change
    add_column :passengers, :name, :string
    add_column :passengers, :email, :string
  end
end
