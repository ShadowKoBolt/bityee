source "https://rubygems.org"

# Declare your gem's dependencies in bityee.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

gem 'mongoid', github: 'mongoid/mongoid'

group :development, :test do
  gem 'guard', '~> 2.5.1'
  gem 'guard-rspec', '~> 4.2.7'
  gem 'rspec-rails', '~> 3.0.0beta2'
  gem 'rspec', '~> 3.0.0.beta2'
  gem 'factory_girl', '~> 4.4.0'
  gem 'pry', '~> 0.9.12.6'
end
