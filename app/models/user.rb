class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_many :invitations
  has_many :attended_event, through: :invitations, source: :event, dependent: :destroy
  has_many :events, inverse_of: 'creator', class_name: 'Event', dependent: :destroy, foreign_key: :creator_id
end
