# Edit this Gemfile to bundle your application's dependencies.
source 'http://rubygems.org'

gem "i18n", ">= 0.4.0"

gem "rails", ">= 3.0.0"

gem "haml"
gem "compass"

gem "better_partials", ">= 1.0.1"
gem "viewfu", ">= 1.0.1"

gem "mongoid", :git => "http://github.com/mongoid/mongoid.git"
gem "bson_ext", ">= 1.0"

gem "devise", ">= 1.1.3"

gem "rails_config", ">= 0.1.5"

# local
# gem "jammit", :path => "~/Gems/jammit"
# gem "jammit-s3", :path => "~/Gems/jammit-s3"

# on git
gem "jammit", :git => "http://github.com/railsjedi/jammit.git"
gem "jammit-s3", :git => "http://github.com/railsjedi/jammit-s3.git"

gem "formtastic", ">= 1.1.0"

# asset packaging
gem "barista", :git => "http://github.com/Sutto/barista.git"

group :development do
  gem "barista_growl", :git => "http://github.com/TrevorBurnham/barista_growl.git"
end

group :development, :test do
  platforms :ruby_18 do
    gem "ruby-debug"
  end
  gem "mongrel"
end

group :test do
  gem "autotest"
  gem "growl-glue"

  gem "rspec-rails", ">= 2.0.0.beta.22"
  gem "remarkable_mongoid"
  gem 'capybara'
  gem 'webrat'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem "factory_girl_rails"

  gem "pickle", :git => "http://github.com/ianwhite/pickle.git"

  gem "launchy"
end