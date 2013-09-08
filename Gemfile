source 'https://rubygems.org'

gem 'rails', '4.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'jquery-rails'
gem 'gravatar_image_tag'
gem 'font-awesome-rails'
gem 'puma'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails'
gem 'coffee-rails'
gem 'zurb-foundation', '~> 4.0.0'
gem 'compass-rails', github: 'milgner/compass-rails', ref: '1749c06f15dc4b058427e7969810457213647fb8'
gem 'haml'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', :platforms => :ruby

gem 'uglifier', '>= 1.3.0'

group :development do
	gem 'better_errors'
	gem 'binding_of_caller'
  gem 'zeus' # this shouldn't be here, but is more practical to install. Just don't run using 'bundle exec zeus' :)
  gem 'guard-livereload'
  gem 'foreman'
  gem 'rails_best_practices'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.0'
  gem 'fuubar'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'god'

# To use debugger
# gem 'debugger'
