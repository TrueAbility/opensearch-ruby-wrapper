# frozen_string_literal: true

require_relative "lib/opensearch_ruby_wrapper/version"

Gem::Specification.new do |spec|
  spec.name = "opensearch_ruby_wrapper"
  spec.version = OpensearchRubyWrapper::VERSION
  spec.authors = ["Pawel Neubauer"]
  spec.email = ["pawel@trueability.com"]

  spec.summary = "Wrapper gem for OpenSearch with Faraday >= 1.0"
  spec.description = "Wrapper gem for OpenSearch with Faraday"
  spec.homepage = "https://github.com/trueability/opensearch-ruby-wrapper"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/trueability/opensearch-ruby-wrapper"
  spec.metadata["changelog_uri"] = "https://github.com/trueability/opensearch-ruby-wrapper/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "opensearch-ruby", "~> 3.1"
  spec.add_dependency "faraday", ">= 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
