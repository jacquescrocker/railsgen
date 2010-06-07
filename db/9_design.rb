##########################################################################
# Design
# - Will Paginate

puts "Creating Design Components"

code_path = Rails.root.join("db", "9_design")
step = Step.create :name => "design", 
                   :title => "Design", 
                   :order => 9,
                   :header => "Choose a Design",
                   :description => "Design copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# Adminzio
step.components.create :title => "Adminizio Lite", 
                       :name => "adminizio",
                       :primary_group => true,
                       :info_url => "http://www.adminizio.com",
                       :code => code_path.join("adminizio.railsgen").read

# MORE TO COME!