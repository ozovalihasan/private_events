class User < ApplicationRecord
  has_many :invitations, dependent: :destroy
  has_many :attended_event, through: :invitations, source: :event, dependent: :destroy
  has_many :events, inverse_of: 'creator', class_name: 'Event', dependent: :destroy
  
end
