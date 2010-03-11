##########################################################################
# Ruby Libraries
# - Will Paginate

puts "Creating Ruby Libraries Components"

code_path = Rails.root.join("db", "8_ruby")
step = Step.create :title => "Ruby Libraries", 
                   :name => "ruby", 
                   :order => 8

# Will Paginate
step.components.create :title => "Will Paginate", 
                       :name => "willpaginate",
                       :source_url => "http://github.com/mislav/will_paginate",
                       :code => code_path.join("willpaginate.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MORE TO COME!