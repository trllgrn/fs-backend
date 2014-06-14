require 'spec_helper'

describe User do
  it "has a valid factory" do
    create(:user).should be_valid
  end
  it "is invalid without an email address" do
    build(:user, email: nil).should_not be_valid
  end
  it "is invalid without an email address containing an @ symbol" do 
    build(:user, email: 'blahblah#gmail.com').should_not be_valid
  end
  it "is invalid without a provider" do
    build(:user, provider: nil).should_not be_valid
  end
  it "is invalid without a petal_id" do
    build(:user, petal_id: nil).should_not be_valid
  end
  it "is invalid without a name" do
    build(:user, name: nil).should_not be_valid
  end
end