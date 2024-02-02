# frozen_string_literal: true

mydir = __dir__

Dir["#{mydir}/ruby_notifications_client/*.rb"].each { |file| require file }
