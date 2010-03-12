jquery = Stack.find_or_create_by_name "jquery"
jquery.update_attributes :landing_order => 9
jquery.generate!

# clear existing selections
jquery.stack_selections.clear

jquery.select_component(Component.find_by_name("jquery"))
jquery.save