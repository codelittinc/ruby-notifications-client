# frozen_string_literal: true

require "dotenv/load"
require "notifications/request"

module Notifications
  class Notification
    def initialize(api_key = nil)
      @key = api_key || ENV["NOTIFICATIONS_API_KEY"]
      @url = "https://api.notifications.codelitt.dev"
    end

    def build_params(params)
      {}.merge(params)
    end

    def authorization
      "Bearer #{@key}"
    end

    def build_url(path)
      "#{@url}#{path}"
    end
  end
end
