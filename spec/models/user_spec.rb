require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'has two instances after adding two users' do
    User.create(username: 'Hasan')
    User.create(username: 'Hillary')
    expect(User.last.username).to eql('Hillary')
    expect(User.count).to eql(2)
  end  
end