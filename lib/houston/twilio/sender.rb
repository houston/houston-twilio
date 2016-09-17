module Houston
  module Twilio
    class Sender
      attr_reader :number

      def initialize(number)
        @number = number
      end

      def user
      end

      def reply(message, *args)
        Houston::Twilio.send message, to: number
      end

    end
  end
end
