# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.3.3"

gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "kaminari", "~> 1.2", ">= 1.2.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]
  gem "ffaker", "~> 2.23"
  gem "foreman", "~> 0.88.1"
  gem "rspec-rails", "~> 6.1", ">= 6.1.3"
end

group :development do
  gem "rubocop-rails", "~> 2.25", ">= 2.25.1"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
