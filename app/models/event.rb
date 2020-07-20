class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: "user_id"
  belongs_to :attendee, class_name: 'User', foreign_key: "attendee_id", optional: true
end