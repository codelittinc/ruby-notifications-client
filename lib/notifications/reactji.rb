# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Reactji < Notification
    def send(reaction, channel, notification_id)
      request("/reactions", {
                reaction:,
                channel:,
                notification_id:
              })
    end
  end
end
