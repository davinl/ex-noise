source 'http://rubygems.org'

gem 'rails', '3.2.3'
# If running on Lion, install of some rails dependencies may fail with a /gcc-4.2: No such file or directory error.
# Installing https://github.com/kennethreitz/osx-gcc-installer should fix this problem
#
gem 'sqlite3'
gem 'validates_timeliness', '~>3.0.9'
gem 'will_paginate', '~>3.0.3'
gem 'acl9', '~>0.12.0'
#gem 'db_populate', '~>0.2.5' #Replace the RAILS_ROOT and RAILS_ENV in this gem's populate.rake file with Rails.root and Rails.env
#gem 'vestal_versions', :git => 'git://github.com/adamcooper/vestal_versions'
gem 'vestal_versions', :git => 'git://github.com/jodosha/vestal_versions'
gem 'dynamic_form'
gem 'american_date'
gem 'simple-password-gen'
# Run the following command before installing PG. Path may need to change based on environment.
# bundle config build.pg --with-pg-config=/Library/PostgreSQL/9.1/bin/pg_config [this is for home package installed pgsql]
# bundle config build.pg --with-pg-config=/usr/local/bin/pg_config [this is for home brew installed pgsql]
gem 'pg', '~>0.13.2'
gem 'redis'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'prototype-rails'

# gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
	gem 'heroku_san'
  gem 'timecop'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'timecop'
end
