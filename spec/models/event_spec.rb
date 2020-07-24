require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Associations' do
    it { should belong_to(:creator) }
    it { should belong_to(:creator).class_name('User') }
    it { should have_many(:invitations) }
    it { should have_many(:attendees) }
    it { should have_many(:attendees).dependent(:destroy) }
  end

  let(:user) do
    User.create(username: 'hasan')
  end

  subject do
    user.events.new(date: '15/8/2020'.to_date)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid when creator is not defined' do
    subject.creator = nil
    expect(subject).to_not be_valid
  end
end
