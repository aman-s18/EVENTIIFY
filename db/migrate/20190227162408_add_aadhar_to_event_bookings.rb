class AddAadharToEventBookings < ActiveRecord::Migration
  def change

add_column :event_bookings, :aadhar, :integer, limit: 8

end
end
