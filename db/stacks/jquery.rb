rspec = Stack.find_or_create_by_name "jquery"
rspec.update_attributes :landing_order => 10
rspec.generate!

# clear existing selections
rspec.stack_selections.clear

rspec.select_component(Component.find_by_name("jquery"))
rspec.save