require "rails_helper"

RSpec.describe User, :type => :model do
  context "with 2 or more users" do
    it "is valid with valid attributes" do
      expect(User.new).to be_valid
    end
    it 'is not valid without a username' do
      User.create(username: "Hillary")
      expect(User.last.username).to eql("Hillary")
    end
  end
end