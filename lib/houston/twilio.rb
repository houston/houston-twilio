require "houston/twilio/engine"
require "houston/twilio/configuration"
require "houston/twilio/client"

module Houston
  module Twilio
    extend self

    def config(&block)
      @configuration ||= Twilio::Configuration.new
      @configuration.instance_eval(&block) if block_given?
      @configuration
    end

    def client
      @client ||= Houston::Twilio::Client.new
    end

    def send(message, to:)
      client.send_message(message, to: to)
    end

  end


  # Extension Points
  # ===========================================================================
  #
  # Read more about extending Houston at:
  # https://github.com/houston/houston-core/wiki/Modules


  # Register events that will be raised by this module
  #
  #    register_events {{
  #      "twilio:create" => params("twilio").desc("Twilio was created"),
  #      "twilio:update" => params("twilio").desc("Twilio was updated")
  #    }}


  # Add a link to Houston's global navigation
  #
  #    add_navigation_renderer :twilio do
  #      name "Twilio"
  #      path { Houston::Twilio::Engine.routes.url_helpers.twilio_path }
  #      ability { |ability| ability.can? :read, Project }
  #    end


  # Add a link to feature that can be turned on for projects
  #
  #    add_project_feature :twilio do
  #      name "Twilio"
  #      path { |project| Houston::Twilio::Engine.routes.url_helpers.project_twilio_path(project) }
  #      ability { |ability, project| ability.can? :read, project }
  #    end

end
