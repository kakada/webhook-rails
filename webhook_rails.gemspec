$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "webhook_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "webhook_rails"
  spec.version     = WebhookRails::VERSION
  spec.authors     = ["Sokly"]
  spec.email       = ["hengsokly23@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Webhook for rails application"
  # spec.description = "TODO: Description of WebhookRails."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"

  spec.add_dependency "haml", "~> 5.1.2"
  spec.add_dependency "haml-rails", "~> 2.0"
  spec.add_dependency "jquery-rails", "~> 4.3.5"
  spec.add_dependency "bootstrap", "~> 4.5.0"
  spec.add_dependency "simple_form", "~> 5.0.0"

  spec.add_development_dependency "rspec-rails", "~> 4.0.1"
  spec.add_development_dependency "pg"
end
