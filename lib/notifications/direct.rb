# frozen_string_literal: true

require "notifications/notification"

module Notifications
  class Direct < Notification
    def send(message, username, uniq = false)
      url = build_url("/direct_messages")
      response = Request.post(url, authorization, build_params({
                                                                 message: message,
                                                                 username: username,
                                                                 uniq: uniq
                                                               }))
      JSON.parse(response.body)
    end
  end
end
