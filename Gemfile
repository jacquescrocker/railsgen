# Edit this Gemfile to bundle your application's dependencies.
source :rubygems

gem "i18n", ">= 0.4.0"

gem "rails", "3.0.1"

gem "haml"
gem "compass"

# gem "mongoid", "2.0.0.beta.15"
gem "mongoid", :git => "http://github.com/mongoid/mongoid.git"
gem "bson_ext", ">= 1.0"

gem "rails_config", ">= 0.1.5"

gem "viewfu", ">= 1.0.1"

gem "devise", ">= 1.1.3"

gem "formtastic", ">= 1.1.0"

# asset packaging
gem "barista", "0.5.1"
gem "jammit", :git => "http://github.com/documentcloud/jammit.git"
gem "jammit-s3"

group :development do
  gem "barista_growl", :git => "http://github.com/TrevorBurnham/barista_growl.git"
  # gem "heroku-rails", :path => "~/Gems/heroku-rails"
  gem "heroku-rails"
end

group :development, :test do
  gem "ruby-debug", :platforms => :mri_18
  gem "ruby-debug19", :platforms => :mri_19
  gem "thin"

  gem "growl-glue"
  gem "launchy"
end

group :test do
  gem "autotest"
  gem "rspec-rails", ">= 2.0.0"
  gem "remarkable_mongoid"
  gem 'capybara'
  gem 'webrat'
  gem 'cucumber-rails'
  gem "factory_girl_rails"

  gem "pickle", :git => "http://github.com/ianwhite/pickle.git"
end