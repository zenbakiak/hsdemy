source "https://rubygems.org"

ruby "2.2.5"

gem "versionist"
gem "active_model_serializers", github: "rails-api/active_model_serializers", branch: "0-8-stable"

gem "rails", "4.2"
gem "jquery-rails"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "coffee-rails", "~> 4.1.0"
gem "uglifier", ">= 1.3.0"
gem "puma"
gem "therubyracer"

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem "quiet_assets"
end

group :development, :test do
  gem "awesome_print"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.1.0"
  gem "ffaker"
end

# Test gems
group :test do
  gem "database_cleaner"
  gem "shoulda-matchers"
end

# Production and staging gems
group :production, :staging do
  gem "rails_12factor"
  gem "exception_notification"
end

gem 'devise'