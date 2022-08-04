# frozen_string_literal: true

require_relative "lib/budget_insight_api/version"

Gem::Specification.new do |spec|
  spec.name = "budget_insight_api"
  spec.version = BudgetInsightAPI::VERSION
  spec.authors = ["Dilolabs"]
  spec.email = ["contact@dilolabs.fr"]

  spec.summary = "Budget Insight API Ruby"
  spec.description = "Ruby wrapper for the REST API at https://docs.budget-insight.com/reference"
  spec.homepage = "https://github.com/dilolabs/budget-insight-api-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://gitd.fr"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dilolabs/budget-insight-api-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/dilolabs/budget-insight-api-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
