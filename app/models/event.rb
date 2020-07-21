class Event < ApplicationRecord
  has_many :invitations
  has_many :attendees, through: :invitations, source: :user
  belongs_to :creator, class_name: 'User', foreign_key: "user_id"  
  scope :past, -> { where("date < (?) ", Date.today ) }
  scope :future, -> { where("date >= (?) ", Date.today ) }
  
  

end