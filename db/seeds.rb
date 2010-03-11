puts "Creating Steps"

# Database
# - ActiveRecord (default)
# - Datamapper
# - Sequel
# - MongoMapper
# - Mongoid

# +attachments:
# - carrier_wave
# - attachment_fu (activerecord)
# - paperclip (activerecord)
# - paperclip (datamapper)

# Javascript
# - JQuery
# - Prototype (default)
# - MooTools

# +jquery:
# - LiveQuery
# - JQuery UI
# - JQuery Form

# Testing
# - TestUnit (default)
# - RSpec
# - Shoulda

# +more:
# - Cucumber (all)
# - Capybara (all)
# - Webrat (all)
# - Culerity (capybara)

# +fixtures:
# - FactoryGirl (all)
# - FixJour (all)

# Web Server
# - Mongrel
# - WebBrick (default)
# - Thin
# - Unicorn

# Deployment
# - Capistrano
# - Heroku
# - Chef

# Middleware
# - Rack::Bug
# - Warden

# Reusable Apps
# - Devise
# - AuthLogic

# Ruby Libraries
# Design"

Step.destroy_all
Component.destroy_all

step_order = 0

##########################################################################
# Templating
# - ERB (default)
# - Haml
# - Mustache
# - Liquid
# - Erector

puts "Creating Templating Components"

code_path = Rails.root.join("db", "1_templates")
step = Step.create :title => "Templating", 
                   :name => "templates", 
                   :order => (step_order+=1)

# ERB
step.components.create :title => "ERB", 
                       :name => "erb",
                       :in_rails_stack => true,
                       :info_url => "http://ruby-doc.org/stdlib/libdoc/erb/rdoc/classes/ERB.html",
                       :code => code_path.join("1_erb.txt").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Haml
step.components.create :title => "Haml", 
                       :name => "haml",
                       :info_url => "http://haml-lang.com",
                       :source_url => "http://github.com/nex3/haml",
                       :code => code_path.join("2_haml.txt").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Mustache
step.components.create :title => "Mustache", 
                       :name => "mustache",
                       :info_url => "http://defunkt.github.com/mustache/",
                       :source_url => "http://github.com/defunkt/mustache",
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


##########################################################################
