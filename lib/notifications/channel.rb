# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Channel < Notification
    def send(message, channel, timestamp = nil, uniq = false)
      url = build_url("/channel_messages")
      params = build_params({
                              message: message,
                              channel: channel,
                              ts: timestamp,
                              uniq: uniq
                            })
      response = Request.post(url, authorization, params)
      JSON.parse(response.body)
    end

    def update(message, channel, timestamp)
      url = build_url("/channel_messages/#{timestamp}")
      response = Request.patch(url, authorization, build_params({
                                                                  message: message,
                                                                  channel: channel,
                                                                  ts: timestamp
                                                                }))

      JSON.parse(response.body)
    end
  end
end
