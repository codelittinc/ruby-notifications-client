# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Direct < Notification
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
