# frozen_string_literal: true

require "notifications/slack_client"

module Notifications
  class Reactji < SlackClient
    def send(reaction, channel, notification_id)
      request("/reactions", {
                reaction:,
                channel:,
                notification_id:
              })
    end
  end
end
