puts "Seeding data"

steps = [
  "Templating",
  "Database",
  "Javascript",
  "Testing",
  "Web Server",
  "Deployment",
  "Middleware",
  "Reusable Apps",
  "Ruby Libraries",
  "Design"
]

Step.destroy_all
order = 0
steps.each do |step_name|
  Step.create(:order => order+=1, :name => step_name)
end
