require_relative "../twilio"

namespace :scheduled_texts do
  desc "send texts that are past their scheduled date/time"

  task :send => :environment do
    # Find messages to send
    messages = TextMessage.where("send_datetime <= ? AND send_attempted = ?", Time.now.to_datetime, false)
    messages.each do |message|
      Twilio.send_message(message.phone_num, message.content)
      message.update_attributes(send_attempted: true)
    end
  end

end
