# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'

gem "rails", :git => "git://github.com/rails/rails.git"

gem "haml"
gem "compass", ">= 0.10.0.rc1"

gem "better_partials", ">= 1.0.1"
gem "viewfu", ">= 1.0.1"

gem "mongoid", :git => "git://github.com/railsjedi/mongoid.git" #:path => "~/Gems/mongoid"
gem "mongo_ext", ">= 0.19"

gem "devise", :git => "git://github.com/plataformatec/devise.git" #:path => "~/Gems/devise"

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
