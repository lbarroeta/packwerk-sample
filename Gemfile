# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'city-state'
gem 'countries'
gem 'discard', '~> 1.2'
gem 'enumerate_it'
gem 'figjam'
gem 'httparty'
gem 'jsbundling-rails'
gem 'mapbox-sdk'
gem 'packwerk'
gem 'pagy', '~> 4.11'
gem 'pundit'
gem 'sidekiq', '~> 6.5', '>= 6.5.8'
gem 'sorcery', '~> 0.16.1'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'view_component'
gem 'wicked'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '>= 7.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pocky'
  gem 'pry-rails'
  gem 'rexml', '~> 3.2', '>= 3.2.4'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
end

group :development do
  gem 'annotate'
  gem 'capistrano', '~> 3.17', require: false
  gem 'capistrano-bundler', '~> 2.1.0', require: false
  gem 'capistrano-passenger', '~> 0.2.1'
  gem 'capistrano-postgresql', '~> 6.2'
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.2'
  gem 'capistrano-rails-console', '~> 2.3'
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-upload-config', '~> 0.9.0'

  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
