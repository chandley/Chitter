require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :message_text, String
  property :message_time, Time
  belongs_to :user
end