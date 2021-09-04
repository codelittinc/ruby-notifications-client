# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Reactji < Notification
    def send(reaction, channel, timestamp)
      url = build_url("/reactions")
      response = Request.post(url, authorization, build_params({
                                                                 reaction: reaction,
                                                                 channel: channel,
                                                                 ts: timestamp
                                                               }))
      JSON.parse(response.body)
    end
  end
end
