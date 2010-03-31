stack = Stack.find_or_create_by :name => "default"
stack.title = "Default Stack"
stack.update_attributes :landing_order => 11
stack.generate!

# clear existing selections
stack.stack_selections.clear

stack.select_component Component.where(:name => "prototype").first
stack.select_component Component.where(:name => "ar").first
stack.select_component Component.where(:name => "testunit").first
stack.save