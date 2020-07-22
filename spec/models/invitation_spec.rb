require 'rails_helper'

RSpec.describe Invitation, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:event) }
  end

  subject do
    User.create(username: 'hasan')
    User.create(username: 'hillary')
    User.first.events.create(date: '15/8/2020'.to_date)
    Invitation.new(user_id: User.second.id, event_id: Event.first.id)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid when event is not defined' do
    subject.event = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid when user is not defined' do
    subject.user = nil
    expect(subject).to_not be_valid
  end
end
