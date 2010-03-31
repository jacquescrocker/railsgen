# stack = Stack.find_or_create_by :name => "jquery"
# stack.title = "jQuery Stack"
# stack.update_attributes :landing_order => 11
# stack.generate!
# 
# # clear existing selections
# stack.components.clear
# 
# stack.select_component Component.where(:name => "jquery").first
# stack.save