require 'twilio-ruby'

# To find these visit https://www.twilio.com/user/account
account_sid = ""
auth_token = ""

@client = Twilio::REST::Client.new account_sid, auth_token
from = "+13126354511",
friends = {'+5555555' => "sam"}
friends.each do |key, value|
message = @client.messages.create(
  :from => from,
  :to => key,
  :body => "Hey #{value}, I made a program to send texts"
)
puts "sent message to #{value}"
end
