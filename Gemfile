source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.0.0'
gem 'bcrypt-ruby', '3.0.1'#for encrypted passwords


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
 gem 'sqlite3'
 gem 'rspec-rails'
 gem 'annotate', '~> 2.4.1.beta' 
 
end
#the above code will use the sqlite3 gem for development

group :production do
 gem 'pg'
end
#the above code will use postgres database gem for production or deploying to heroku,

group :test do
 gem 'capybara'
end
#the above code will be used for testing, which allows us to simulate a 
#user's interaction with the sample application using a natural English-like syntax


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

#we don't have to use the lines of code below for Ubuntu 13.04
gem 'execjs'
gem 'therubyracer'






 
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
