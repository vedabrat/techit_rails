source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
# Use CoffeeScript for .coffee assets and views
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# bundle exec rake doc:rails generates the API under doc/api.
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Unicorn as the app server
# gem 'unicorn'
gem "figaro"
gem "newrelic_rpm"
gem 'rails', '4.2.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'figaro'
gem 'stripe'
gem 'stock_quote' #for welcome/stockwatch


group :production do
  gem "pg"
  gem "puma"

end
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'sqlite3'
  gem 'spring'
  # Access an IRB console on exception pages or by using <%= console %> in views
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end
