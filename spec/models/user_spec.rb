require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:invitations) }
    it { should have_many(:invitations).dependent(:destroy) }
    it { should have_many(:attended_event) }
    it { should have_many(:attended_event).dependent(:destroy) }
    it { should have_many(:attended_event).through(:invitations).source(:event) }
    it { should have_many(:events) }
    it { should have_many(:events).dependent(:destroy) }
    it { should have_many(:events).class_name('Event') }
    it { should have_many(:events).inverse_of(:creator) }
  end

  subject do
    User.new(username: 'hillary')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
