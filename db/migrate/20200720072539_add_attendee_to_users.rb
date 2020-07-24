class AddAttendeeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :attendee, foreign_key: true
  end
end
