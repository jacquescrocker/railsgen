# stack = Stack.find_or_create_by_name "rspec"
# stack.title = "RSpec Stack"
# stack.update_attributes :landing_order => 10
# stack.generate!
# 
# # clear existing selections
# stack.stack_selections.clear
# 
# stack.select_component(Component.find_by_name("rspec"))
# stack.select_component(Component.find_by_name("cucumber"))
# stack.save