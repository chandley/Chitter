require 'message'
require 'database'

describe 'Message' do

  before(:each) do Message.create(:message_text => "Test message", :message_time => "now") end

  it 'should be able to be created' do
    expect(Message.count).not_to eq(0)
  end

  it 'should have some text' do
    expect(Message.first.message_text).to eq("Test message")
  end

  it 'should have a time' do
    expect(Message.first.message_time).to eq("now")
  end
end