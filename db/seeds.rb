puts "Creating Steps"

# pull in all the step and components
Dir[Rails.root.join("db", "*_*.rb")].each do |f|
  require f
end

# pull in all the stacks
Dir[Rails.root.join("db", "stacks", "*.rb")].each do |f|
  require f
end