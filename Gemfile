source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'etsy'
gem 'sorcery'
gem 'delayed_job_active_record'

gem 'haml-rails'

gem "therubyracer"
gem "less-rails"
gem 'twitter-bootstrap-rails'
gem 'twitter_bootstrap_form_for',
  :git => 'https://github.com/stouset/twitter_bootstrap_form_for.git',
  :branch => 'bootstrap-2.0' # using 2.0 branch until it's final


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem 'sqlite3'

  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'

  # Pry for debug
  gem 'pry'
  gem 'pry-remote' # connect to pry remotely when running foreman
end


# Production configuration
group :production do
  # Use as the app server
  gem 'thin' , '1.3.1'
  gem 'pg'
end


gem 'jquery-rails'
