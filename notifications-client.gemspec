# frozen_string_literal: true

require_relative "lib/notifications/version"

Gem::Specification.new do |spec|
  spec.name          = "notifications-client"
  spec.version       = Notifications::Client::VERSION
  spec.authors       = ["kaiomagalhaes"]
  spec.email         = ["me@kaiomagalhaes.com"]

  spec.summary       = "Client for Codelitt's notification system"
  spec.description   = "Client for Codelitt's notification system"
  spec.homepage      = "https://github.com/codelittinc/notifications-client"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.1.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/codelittinc/notifications-client"
  spec.metadata["changelog_uri"] = "https://github.com/codelittinc/notifications-client/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
