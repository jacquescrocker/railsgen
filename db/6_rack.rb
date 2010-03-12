##########################################################################
# Rack Middleware
# - Rack::Bug
# - Warden


puts "Creating Rack Middleware Components"

code_path = Rails.root.join("db", "6_rack")
step = Step.create :name => "rack",  
                   :title => "Middleware", 
                   :primary_group => true,
                   :header => "Choose Rack Middleware",
                   :order => 6

# Rack::Bug
step.components.create :title => "Rack::Bug", 
                       :name => "rackbug",
                       :primary_group => true,
                       :source_url => "http://github.com/brynary/rack-bug",
                       :code => code_path.join("rackbug.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Warden
step.components.create :title => "Warden", 
                       :name => "warden",
                       :primary_group => true,
                       :info_url => "http://github.com/hassox/warden",
                       :code => code_path.join("warden.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MORE TO COME!