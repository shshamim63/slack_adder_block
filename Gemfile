# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'slack-ruby-bot'
gem 'puma'
gem 'sinatra'
gem 'dotenv'
gem 'bigdecimal'
gem'celluloid-io'
gem 'async-websocket', '~>0.8.0'

group :development, :test do
  gem 'rake'
  gem 'foreman'
end

group :test do
  gem 'rspec', '~> 3.10'
end