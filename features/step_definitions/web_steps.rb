require 'uri'
require 'cgi'
require './server.rb'
# require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


Given(/^an anonymous visitor$/) do
  @session = Chitter.new
end

When(/^I visit the homepage$/) do
  visit('/')
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content('Welcome to Chitter')
end

Given(/^a message has been posted$/) do
  Message.create(:message_text => "Test message", :message_time => Time.now)
end

Then(/^I should see at least one message$/) do
  expect(page).to have_content("Test message")
end