stack = Stack.find_or_create_by_name "default"
stack.title = "Default Stack"
stack.update_attributes :landing_order => 11
stack.generate!

# clear existing selections
stack.stack_selections.clear

stack.select_component(Component.find_by_name("prototype"))
stack.select_component(Component.find_by_name("ar"))
stack.select_component(Component.find_by_name("testunit"))
stack.save