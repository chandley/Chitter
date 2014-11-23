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

Given(/^an anonymous visitor to homepage$/) do
  step 'an anonymous visitor'
  step 'I visit the homepage'
end

When(/^I click 'sign up'$/) do
  click_link 'sign_up'
end

Then(/^I am invited to give details$/) do
  expect(page).to have_content("Please enter your name, email and password")
end

When(/^I enter a message$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the message on the homepage$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the signup page$/) do
  visit('/users/new')
end

When(/^I enter my details$/) do
  fill_in 'email', :with => 'test@user.com'
  fill_in 'username', :with => 'username'
  fill_in 'password', :with => 'password'
  fill_in 'password_confirmation', :with => 'password'
  click_button "Sign up"
end

Then(/^I am logged in as a new user$/) do
  pending # express the regexp above with the code you wish you had
end