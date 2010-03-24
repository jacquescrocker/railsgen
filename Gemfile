# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'

gem "bundler", "0.9.5"
gem "rails", "3.0.0.beta"

gem "haml"
gem "compass", ">= 0.10.0.rc1"

gem "better_partials", ">= 1.0.1"
gem "viewfu", ">= 1.0.1"

gem "mongo", ">= 0.19"
gem "mongo_ext", ">= 0.19"

gem "mongo_mapper", ">= 0.7.1"

group :development, :test do
  gem "ruby-debug"
  gem "mongrel"
end

group :test do
  gem "ruby-debug"
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem "factory_girl", :require => nil
  gem "rspec-rails", ">= 2.0.0.beta"
end

group :production do
  # required for getting sass to work with heroku
  gem "hassle"
end
