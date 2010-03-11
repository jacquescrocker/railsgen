##########################################################################
# Deployment
# - Capistrano
# - Heroku
# - Chef
# - EngineYard Cloud

puts "Creating Deployment Components"

code_path = Rails.root.join("db", "5_deploy")
step = Step.create :title => "Deployment", 
                   :name => "deploy", 
                   :order => 5

# Capistrano
step.components.create :title => "Capistrano", 
                       :name => "cap",
                       :info_url => "http://www.capify.org",
                       :source_url => "http://github.com/capistrano/capistrano",
                       :code => code_path.join("cap.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Heroku
step.components.create :title => "Heroku", 
                       :name => "heroku",
                       :info_url => "http://heroku.com",
                       :code => code_path.join("heroku.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# Chef
step.components.create :title => "Chef", 
                       :name => "chef",
                       :info_url => "http://wiki.opscode.com/display/chef/Home",
                       :source_url => "http://github.com/opscode/chef",
                       :code => code_path.join("chef.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Engineyard Cloud
step.components.create :title => "EngineYard Cloud", 
                       :name => "eycloud",
                       :info_url => "http://engineyard.com",
                       :code => code_path.join("eycloud.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

