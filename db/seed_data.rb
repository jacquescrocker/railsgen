puts "Creating Steps"

Step.destroy_all
Component.destroy_all

require "db/0_template"
require "db/1_orm"
require "db/2_js"
require "db/3_test"
require "db/4_server"
require "db/5_deploy"
require "db/6_rack"
require "db/7_apps"
require "db/8_ruby"
require "db/9_design"

# grab everthing 
Dir[Rails.root.join("db", "stacks", "*.rb")].each do |f|
  require f
end