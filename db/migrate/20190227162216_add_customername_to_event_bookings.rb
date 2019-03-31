class AddCustomernameToEventBookings < ActiveRecord::Migration
  def change

add_column :event_bookings, :customername, :string

end
end
