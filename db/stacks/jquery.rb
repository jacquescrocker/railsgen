stack = Stack.find_or_create_by_name "jquery"
stack.title = "jQuery Stack"
stack.update_attributes :landing_order => 11
stack.generate!

# clear existing selections
stack.stack_selections.clear

stack.select_component(Component.find_by_name("jquery"))
stack.save