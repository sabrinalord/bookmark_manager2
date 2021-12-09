# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '3.0.0'
group :test do
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'capybara'
  gem 'pg'
  gem 'rspec'
  gem 'rubocop', '1.23.0'
  gem 'sinatra'
  gem 'webrick'
end

gem "sinatra-contrib", "~> 2.1"
