stack = Stack.find_or_create_by :name => "merb"
stack.title = "Merbish Stack"
stack.update_attributes :landing_order => 11
stack.generate!

# clear existing selections
stack.components.clear

stack.select_component Component.where(:name => "jquery").first
stack.select_component Component.where(:name => "dm").first
stack.select_component Component.where(:name => "rspec").first
stack.select_component Component.where(:name => "webrat").first
# stack.select_component Component.where(:name => "cucumber").first
# stack.select_component Component.where(:name => "haml").first
# stack.select_component Component.where(:name => "compass").first

stack.save