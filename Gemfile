source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'enum_help'
gem 'google-api-client'
gem 'bulma-rails', '~> 0.9.1'
gem 'seed-fu'
gem 'meta-tags'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter'
  gem 'rubocop-rails'
  gem 'rails_best_practices'

  gem 'better_errors'
  gem 'pry-byebug'
  gem 'binding_of_caller'

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rspec_junit_formatter'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
  gem 'webdrivers'
end
