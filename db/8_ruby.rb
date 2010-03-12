##########################################################################
# Ruby Libraries
# - Will Paginate

puts "Creating Ruby Libraries Components"

code_path = Rails.root.join("db", "8_ruby")
step = Step.create :name => "ruby", 
                   :title => "Ruby Libraries", 
                   :header => "Choose your Ruby Libraries",
                   :order => 8

# Will Paginate
step.components.create :title => "Will Paginate", 
                       :name => "willpaginate",
                       :primary_group => true,
                       :source_url => "http://github.com/mislav/will_paginate",
                       :code => code_path.join("willpaginate.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MORE TO COME!