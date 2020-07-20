class User < ApplicationRecord
  has_many :events, inverse_of: 'creator'
  has_many :attended_events, inverse_of: 'attendee'
end
