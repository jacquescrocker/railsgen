##########################################################################
# Reusable Apps
# - Devise
# - AuthLogic

puts "Creating Reusable App Components"

code_path = Rails.root.join("db", "7_apps")
step = Step.create :title => "Reusable Apps", 
                   :name => "apps", 
                   :order => 7

# Devise
step.components.create :title => "Devise", 
                       :name => "devise",
                       :info_url => "http://blog.plataformatec.com.br/tag/devise/",
                       :source_url => "http://github.com/plataformatec/devise",
                       :code => code_path.join("devise.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MORE TO COME!