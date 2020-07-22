require 'rails_helper'

RSpec.describe Event, :type => :model do
  it 'has two instances after adding two events' do
    User.create(username: 'hasan')
    User.first.events.create(date: '15/8/2020'.to_date)
    User.first.events.create(date: '20/7/2020'.to_date)
    expect(Event.last.date).to eql('20/7/2020'.to_date)
    expect(Event.count).to eql(2)
  end
end