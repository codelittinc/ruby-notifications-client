# frozen_string_literal: true

require "notifications/notifications_client"

module Notifications
  class Reactji < NotificationsClient
    def send(reaction, channel, notification_id)
      request("/reactions", {
                reaction:,
                channel:,
                notification_id:
              })
    end
  end
end
