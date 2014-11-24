require 'user'
require 'database'
require 'spec_helper'

describe 'User' do

  before(:each) do User.create(:username => "joe", 
                               :email => "joe@bloggs.com", 
                               :password => "pass", 
                               :password_confirmation => "pass"
                               )
  end

  it 'should have a name' do    
    expect(User.first.username).to eq("joe")
  end

  it 'should have an email' do
    expect(User.first.email).to eq("joe@bloggs.com")   
  end

  it 'should not allow two users with the same name' do
    User.create(:username => "joe", :email => "another_joe@bloggs.com")
    expect(User.count).to eq(1)
  end

  it 'should not allow two users with the same email' do
    User.create(:username => "another_joe", :email => "joe@bloggs.com")
    expect(User.count).to eq(1)
  end
end


