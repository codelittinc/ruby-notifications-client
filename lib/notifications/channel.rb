# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Channel < Notification
    def send(message, channel, notification_id = nil, uniq = false)
      request("/channel_messages", {
                message:,
                channel:,
                notification_id:,
                uniq:
              })
    end

    def update(message, channel, notification_id)
      url = build_url("/channel_messages/#{notification_id}")
      response = Request.patch(url, authorization, {
                                 message:,
                                 channel:,
                                 notification_id:
                               })
      JSON.parse(response.body)
    end
  end
end
