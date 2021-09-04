# frozen_string_literal: true

require "notifications/direct"

RSpec.describe Notifications::Direct do
  context "#send" do
    it "sends a message" do
      VCR.use_cassette("direct#send") do
        response = Notifications::Direct.new.send("123", "kaiomagalhaes")
        expect(response["ts"]).to eql("1630766950.000700")
      end
    end
  end
end
