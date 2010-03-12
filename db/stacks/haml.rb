haml = Stack.find_or_create_by_name "haml"
haml.update_attributes :landing_order => 10
haml.generate!

# clear existing selections
haml.stack_selections.clear

haml.select_component(Component.find_by_name("jquery"))
haml.select_component(Component.find_by_name("haml"))
haml.save