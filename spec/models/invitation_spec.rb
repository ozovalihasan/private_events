require 'rails_helper'

RSpec.describe Invitation, type: :model do
  context "with 1 invitation" do
    it "creates one invitation" do
      User.create(username: 'hasan')
      User.create(username: 'hillary')
      User.first.events.create(date: '15/8/2020'.to_date)
      User.second.attended_event << Event.first
      expect(Invitation.all.size).to eq(1)
    end
  end
end
