# stack = Stack.find_or_create_by :name => "rspec"
# stack.title = "RSpec Stack"
# stack.update_attributes :landing_order => 10
# stack.generate!
# 
# # clear existing selections
# stack.components.clear
# 
# stack.select_component Component.where(:name => "rspec").first
# stack.select_component Component.where(:name => "cucumber").first
# stack.save