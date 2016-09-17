require_dependency "houston/twilio/message"

module Houston::Twilio
  class MessagesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def create
      message = Houston::Twilio::Message.new(params)
      Houston::Conversations.hear(message)
      head :ok
    end

  end
end
