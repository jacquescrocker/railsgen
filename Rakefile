# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

RailsGenerate::Application.load_tasks

namespace :deploy do

  desc "Deploy to Heroku"
  task :production do
    Jammit.package!
    Jammit.upload_to_s3!

    puts `git push heroku`
  end

end

task :deploy => "deploy:production"