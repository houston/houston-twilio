source "https://rubygems.org"

# Declare your gem's dependencies in houston-twilio.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

group :development, :test do
  gem "pry"
end

group :test do
  gem "minitest"
  gem "capybara"
  gem "shoulda-context"

  gem "minitest-reporters", require: false
  gem "minitest-reporters-turn_reporter", require: false
end

# Use the development version of houston-core
# gem "houston-core", github: "houston/houston-core", branch: "master"
