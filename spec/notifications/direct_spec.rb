# frozen_string_literal: true

require "notifications/direct"

RSpec.describe Notifications::Direct do
  context "#send" do
    it "sends a message" do
      VCR.use_cassette("direct#send") do
        response = Notifications::Direct.new.send("123", "kaiomagalhaes")
        expect(response["notification_id"]).to eql("8172")
      end
    end
  end
end
