stack = Stack.find_or_create_by_name "haml"
stack.title = "Haml Stack"
stack.update_attributes :landing_order => 10
stack.generate!

# clear existing selections
stack.stack_selections.clear

stack.select_component(Component.find_by_name("haml"))
stack.select_component(Component.find_by_name("compass"))
stack.save