# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'exif', '~> 2.2'

group :test do
  gem 'rspec', '~> 3.8'
  gem 'rspec_junit_formatter', '~> 0.4'
  gem 'simplecov', '~> 0.13'
  gem 'codeclimate-test-reporter', '~> 1.0'
  gem 'rubocop-rspec'
end

group :development do
  gem 'pry', '~> 0.12.2'
  gem 'guard'
  gem 'guard-shell'
end
