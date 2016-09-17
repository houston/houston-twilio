require "houston/twilio/sender"

module Houston
  module Twilio
    class Message

      def initialize(payload)
        @payload = payload
      end

      def text
        payload["Body"]
      end
      alias :to_s :text

      def contexts
        [ :conversation, :sms ]
      end

      def sender
        @sender ||= Houston::Twilio::Sender.new payload["From"]
      end
      alias :channel :sender

    private
      attr_reader :payload
    end
  end
end
