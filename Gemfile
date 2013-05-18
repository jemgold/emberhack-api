source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'active_model_serializers', '~> 0.8.0'
gem 'geocoder'
gem 'rMeetup'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  gem 'rack-mini-profiler'
  gem 'better_errors'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'bullet'
end

group :development, :test do
  gem 'jazz_hands'
  gem 'binding_of_caller'
  gem 'rspec-rails', '~> 2.13'
  gem 'factory_girl_rails'
  gem 'rb-inotify', require: false  # Linux file notification
  gem 'rb-fsevent', require: false  # OSX file notification
  gem 'rb-fchange', require: false  # Windows file notification
  gem 'terminal-notifier-guard'
end

group :test do
  gem 'capybara'
  gem 'vcr'                         # record HTTP interactions
  gem 'ffaker'                      # easy fake data
  gem 'spork'                       # speedier tests
  gem 'guard-rspec'                 # watch app files
  gem 'guard-spork'                 # spork integration
  gem 'database_cleaner'            # cleanup database in tests
  gem 'shoulda'                     # model spec tester
  gem 'webmock'
end