require 'twilio-ruby'

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

client = Twilio::REST::Client.new account_sid, auth_token

client.fax.v1.faxes.create(to: ENV['TWILIO_TO_NUMBER'], from: ENV['TWILIO_FROM_NUMBER'],
                           media_url: 'https://mktakuya.net/files/fax_sample.pdf')
