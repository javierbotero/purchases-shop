require_relative "lib/purchase/version"

Gem::Specification.new do |spec|
  spec.name        = "purchase"
  spec.version     = Purchase::VERSION
  spec.authors     = ["javierbotero"]
  spec.email       = ["javierbotero10271@gmail.com"]
  spec.homepage    = "https://github.com/javierbotero/purchases-shop"
  spec.summary     = "Engine for Shop app"
  spec.description = "Engine rails app that manages purchases logic and models for the shop app"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/javierbotero/purchases-shop.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/javierbotero/purchases-shop.git"
  spec.metadata["changelog_uri"] = "https://github.com/javierbotero/purchases-shop.git"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3"
end
