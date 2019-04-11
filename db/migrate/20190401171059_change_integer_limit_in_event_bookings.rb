class ChangeIntegerLimitInEventBookings < ActiveRecord::Migration
  	 
  	 def change
     change_column :event_bookings, :aadhar, :integer, limit: 16
   	 end 
end
