source 'http://rubygems.org'

gem 'rails', '3.0.5'
gem 'nokogiri'
gem 'mongoid', '2.1.2'
gem 'haml'
gem 'will_paginate', '>=3'
gem 'devise', '~> 1.4.0'
gem 'lighthouse-api'
gem 'redmine_client', :git => "git://github.com/oruen/redmine_client.git"
gem 'mongoid_rails_migrations'
gem 'useragent', '~> 0.3.1'
gem 'pivotal-tracker'
gem 'ruby-fogbugz', :require => 'fogbugz'
gem 'octokit'
gem 'inherited_resources'
# gem 'SystemTimer', :platform => :ruby_18

# Deploy with Capistrano
gem 'capistrano', :git => 'git://github.com/capistrano/capistrano.git'
gem 'capistrano-ext'
gem 'rvm'

group :production do
  gem 'hoptoad_notifier', "~> 2.3"
  gem 'unicorn'
end

platform :ruby do
  gem 'bson_ext', '~> 1.3.1'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.5'
  gem 'webmock', :require => false
  gem 'factory_girl_rails'
end

group :test do
  gem 'rspec', '~> 2.5'
  gem 'database_cleaner', '~> 0.6.0'
  gem 'email_spec'
end

group :heroku do
  gem 'thin'
end

