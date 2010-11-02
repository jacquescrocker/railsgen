### Shortcuts: uncomment these for easier to type deployments
### e.g. rake deploy (instead of rake heroku:deploy)
###
task :deploy =>  ["heroku:deploy"]
task :console => ["heroku:console"]
task :setup =>   ["heroku:setup"]
task :logs =>    ["heroku:logs"]
task :restart => ["heroku:restart"]

# Heroku Deploy Callbacks
namespace :heroku do

  # runs before each push to a particular heroku deploy environment
  task :before_each_deploy do
    puts "Uploading assets to #{@heroku_app[:app_name]}!"

    # grab the environment settings of the deploy environment (for s3 stuff)
    Settings.add_source!("#{Rails.root}/config/settings/#{@heroku_app[:app_name]}.yml")
    Settings.reload!

    # upload everything
    Rake::Task["assets:upload"].invoke
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
    Jammit.upload_to_s3!({
      :bucket_name => Settings.s3.asset_bucket,
      :access_key_id => Settings.s3.access_key_id,
      :secret_access_key => Settings.s3.secret_access_key
    })
  end
end
