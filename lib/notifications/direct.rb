# frozen_string_literal: true

require "notifications/notifications_client"

module Notifications
  class Direct < NotificationsClient
    def send(message, username, uniq = false)
      return if !username || username.size < 3

      request("/direct_messages", {
                message:,
                username:,
                uniq:
              })
    end
  end
end
