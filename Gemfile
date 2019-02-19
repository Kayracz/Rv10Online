source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'dotenv-rails', groups: [:development, :test]
gem 'rails', '~> 5.2.2'
gem 'cloudinary', '~> 1.9.1'
gem 'figaro'

gem 'devise'
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '~> 1.3'
# Use postgresql as the database for Active Record
# Use Puma as the app server
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder'
gem 'pg'
gem 'puma'
# gem 'redis'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-sass', '~> 5.0.9'
gem 'simple_form'
gem 'webpacker', '~> 3.5'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# Use Redis adapter to run Action Cable in production
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'inline_svg'
gem 'mail_form'
gem 'sendgrid-ruby'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end
