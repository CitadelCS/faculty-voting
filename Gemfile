source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Devise is a flexible authentication solution for Rails based on Warden.
gem 'devise'

# Simple authorization solution for Rails. All permissions are stored in a single location.
gem 'cancan'

# Rails gem to allowing records to be votable
gem 'acts_as_votable'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
  gem 'capybara', '~> 3.33'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'sqlite3'
  gem 'webdrivers'
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and local/instance variable inspection for all stack frames.
  gem 'better_errors', '~> 2.8', '>= 2.8.3'
  # A modern CSS framework based on Flexbox
  gem 'bulma-rails', '~> 0.9.0'
  # Guard is a command line tool to easily handle events on file system modifications.
  gem 'guard', '~> 2.16', '>= 2.16.2'
  # Guard::LiveReload automatically reloads your browser when 'view' files are modified.
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'simplecov', :require => false
  gem 'rspec-rails', '~> 4.0.1'
  gem 'capybara', '~> 3.33'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  gem 'cucumber-rails', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem "cucumber-rails-training-wheels"
  gem 'cucumber'
end

group :production do
  #gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
