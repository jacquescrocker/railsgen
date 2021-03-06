##########################################################################
# Ruby Libraries
# - Will Paginate

puts "Creating Ruby Libraries Components"

code_path = Rails.root.join("db", "8_ruby")
step = Step.create :name => "ruby", 
                   :title => "Ruby Libraries", 
                   :order => 8,
                   :header => "Choose your Ruby Libraries",
                   :description => "Ruby Libraries copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# Will Paginate
step.components.create :title => "Will Paginate", 
                       :name => "willpaginate",
                       :primary_group => true,
                       :source_url => "http://github.com/mislav/will_paginate",
                       :code => code_path.join("willpaginate.railsgen").read

# MORE TO COME!