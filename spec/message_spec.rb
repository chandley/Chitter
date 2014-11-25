require 'message'
require 'database'
require 'spec_helper'
require 'user'

describe 'Message' do

  before(:each) do User.create(:username => "joe", 
                               :email => "joe@bloggs.com", 
                               :password => "pass", 
                               :password_confirmation => "pass"
                               ) 
  end

  before(:each) do Message.create(:message_text => "Test message", :message_time => Time.now, :user_id => 1) end

  it 'should be able to be created' do
    expect(Message.count).not_to eq(0)
  end

  it 'should have some text' do
    expect(Message.first.message_text).to eq("Test message")
  end

  it 'should have a time' do
    expect(Message.first.message_time).not_to be_nil
  end
end