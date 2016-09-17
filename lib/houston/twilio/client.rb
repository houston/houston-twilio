require "twilio-ruby"

module Houston
  module Twilio
    class Client

      def initialize
        @twilio = ::Twilio::REST::Client.new Houston::Twilio.config.sid, Houston::Twilio.config.token
      end

      def send_message(message, to:)
        twilio.messages.create(from: Houston::Twilio.config.number, to: to, body: message)
      end

    private
      attr_reader :twilio
    end
  end
end
