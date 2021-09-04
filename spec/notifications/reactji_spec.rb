# frozen_string_literal: true

require "notifications/reactji"

RSpec.describe Notifications::Reactji do
  context "#send" do
    it "sends a message" do
      VCR.use_cassette("reactji#send") do
        response = Notifications::Reactji.new.send("scream", "feed-test-automations", "1630765245.000700")

        expect(response["ok"]).to eql(true)
      end
    end
  end
end
