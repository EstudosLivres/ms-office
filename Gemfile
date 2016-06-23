ruby '2.2.4'
#ruby=2.2.4@office
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.13', '< 0.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Improve turbolink for jquery app
gem 'jquery-turbolinks', '~> 2.1.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

=begin
 ######################    ServerGEMs    #################################
=end

# Thin is better for localhost
gem 'thin', '~> 1.6.4', group: :development

# Puma is a faster server
gem 'puma', '>= 3.4.0', group: :production



=begin
 ######################    Social & Design GEMs    #################################
=end

# Faster & easier HTML
gem 'slim-rails', '~> 3.0.1'

# View base Framework
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

# View Themes & PlugIns
gem 'creative_tim', '~> 1.0', '>= 1.0.20'

# Just to use helpers & colors
gem 'materialize-sass', '~> 0.97.6'

# ionic icons
gem 'ionicons-rails', '~> 2.0.0'

# Colorize the console puts
gem 'colorize'

# Only icons from material design
gem 'material-icons-rails', '~> 0.2.1'

# IconFonts - FontAwesome
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.1.0'

# IconFonts - Themify
gem 'themify-icons-rails', '~> 1.0', '>= 1.0.1.1'

# Animated Progress link/screen transaction
gem 'nprogress-rails', '~> 0.1.6.7'

# Bootstrap social buttons
gem 'bootstrap-social-rails', '~> 4.12'

# Paginate Bootstrap design
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'

=begin
 ######################    Additional functionality GEMs    #################################
=end

# Uploader gem
gem 'carrierwave', '~> 0.11.2'

# Process MSOffice files
gem 'rubyXL', '~> 3.3', '>= 3.3.21'

# Better insert perform for BigData
gem 'activerecord-import', '~> 0.13.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # RSPec for BDD practices
  gem 'rspec-rails', '~> 3.4.2'

  # Better Errors for fast debug from the view on the browser
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller'

  # Option to not use Fixtures (FactoryGirl)
  gem 'factory_girl_rails', '~> 4.7.0'

  # Create readable attrs values
  gem 'faker', '~> 1.6.3'

  # RSPec Plugin for testing Views
  gem 'capybara', '~> 2.7.1'

  # RSPec Plugin for code-coverage
  gem 'simplecov', '~> 0.11.2'
end

# Heroku pre compile
gem 'rails_12factor', group: :production