class User < ApplicationRecord
  has_many :invitations
  has_many :attended_event, through: :invitations, source: :event
  has_many :events, inverse_of: 'creator', class_name: 'Event'
  
end
