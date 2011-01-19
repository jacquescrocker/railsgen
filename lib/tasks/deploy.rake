# Deploy Tasks
task :deploy =>  ["heroku:deploy"]
task :console => ["heroku:console"]
task :setup =>   ["heroku:setup"]

# Heroku Deploy Callbacks
namespace :heroku do

  # runs before each push to a particular heroku deploy environment
  task :before_each_deploy do
    puts "Uploading assets to #{@heroku_app[:env]}!"

    # grab the environment settings of the deploy environment (for s3 stuff)
    Settings.add_source!("#{Rails.root}/config/settings/#{@heroku_app[:env]}.yml")
    Settings.reload!

    # upload everything
    Rake::Task["assets:upload"].invoke
  end

  task :after_each_deploy do
    # TODO: open up growl alert saying we're done deploying to @heroku_app[:app_name]
  end

  task :after_deploy do
    # TODO: send alert email
    # that lists all the environments we deployed to
  end
end

namespace :assets do
  # Compiles all the static assets in the project
  desc "Compiles all the assets (SASS, CoffeeScript, etc)"
  task :compile => :environment do
    # regenerates SASS
    Sass::Plugin.force_update_stylesheets

    # regenerate coffeescripts
    Rake::Task["barista:brew"].invoke

    # Package up Jammit assets
    Jammit.package!
  end

  # Upload all the static assets to s3
  desc "Uploads all the assets to S3"
  task :upload => :compile do
    # initialize the s3 access info from our Settings
    require 'ruby-debug';debugger
    Jammit.upload_to_s3!({
      :bucket_name => Settings.s3.asset_bucket,
      :access_key_id => Settings.s3.access_key_id,
      :secret_access_key => Settings.s3.secret_access_key
    })
  end
end
