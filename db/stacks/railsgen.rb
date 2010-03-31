stack = Stack.find_or_create_by :name => "railsgen"
stack.title = "Railsgen Stack"
stack.update_attributes :landing_order => 10
stack.generate!

# clear existing selections
stack.stack_selections.clear

stack.select_component Component.where(:name => "jquery").first
stack.select_component Component.where(:name => "mongoid").first
stack.select_component Component.where(:name => "rspec").first
stack.select_component Component.where(:name => "cucumber").first
stack.select_component Component.where(:name => "haml").first
stack.select_component Component.where(:name => "compass").first
stack.save