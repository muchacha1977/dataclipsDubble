source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
group :development, :test do 
	gem 'rspec-rails'
	gem 'factory_girl_rails'
end

# Gems used only for assets and not required # in production environments by default. 
group :assets do
	# Use SCSS for stylesheets
	gem 'sass-rails',   '~> 4.0.0'
	# Use CoffeeScript for .js.coffee assets and views
	gem 'coffee-rails', '~> 4.0.0'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
	gem 'capybara'

end

gem 'pg' #Postgres
gem 'mysql2' #mysql
gem 'devise' # Devise Authentication
gem 'bootstrap-sass' #bootstrap
gem 'sequel' #DB-Mgmt-Gem
gem 'foreigner' #foreign keys in DB
gem 'attr_encrypted' #encrypt data in the database

gem 'rails_12factor', group: :production #needed by heroku

ruby "2.1.0"

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
