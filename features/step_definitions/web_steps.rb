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
  Message.create(:message_text => "Test message", :message_time => Time.now, :user_id = Users(:name = 'test').first.id
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
  fill_in 'message_text', :with  => 'this is a test message'
end

Then(/^I see the test message on the homepage$/) do
  expect(page).to have_content('this is a test message')
end

Given(/^I am on the signup page$/) do
  visit('/users/new')
end

When(/^I enter my details$/) do
  fill_in 'email', :with => 'test@user.com'
  fill_in 'username', :with => 'test'
  fill_in 'password', :with => 'password'
  fill_in 'password_confirmation', :with => 'password'
  click_button "Sign up"
end

Then(/^I am welcomed as a test user$/) do
  expect(page).to have_content("Welcome, test")
end

Given(/^I am logged in as a new user$/) do
  step 'I am on the signup page'
  step 'I enter my details'
end

Then(/^I am invited to enter a message$/) do
  expect(page).to have_content("enter a message")
end

Then(/^I see the message on the homepage$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sign out$/) do
  click_link "sign_out"
end

When(/^I click 'sign in'$/) do
  click_link 'sign_in'
end

Then(/^I am invited to give username and password$/) do
  expect(page).to have_content("Please enter your name and password")
end



Given(/^I am logged in to homepage$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I am logged in as a user$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I give previously registered username and password$/) do
  step 'I am on the signup page'
  step 'I enter my details'
  step 'I sign out'
  visit '/sessions/new'
  fill_in 'username', :with => 'test'
  fill_in 'password', :with => 'password'
  click_button "Sign in"
end