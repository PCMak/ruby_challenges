require 'rubygems'
require 'twilio-ruby'

account_sid = "AC0d25817f286ff51968b2ac92a531dcb2"
auth_token = "8774741157a80285a3ee1ef229c1a887"

@client = Twilio::REST::Client.new(account_sid,auth_token)

message = @client.account.messages.create(
:from => "+your Twilio number",
:to => "+your own number",
:body => "Haaaaii!"
)

puts message.to
end
