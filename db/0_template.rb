##########################################################################
# Templating
# - ERB (default)
# - Haml
# - Mustache
# - Liquid
# - Erector

puts "Creating Templating Components"

code_path = Rails.root.join("db", "0_template")
step = Step.create :name => "template", 
                   :title => "Templating", 
                   :header => "Choose a Templating Library", 
                   :order => 0

# ERB
step.components.create :title => "ERB", 
                       :name => "erb",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://ruby-doc.org/stdlib/libdoc/erb/rdoc/classes/ERB.html",
                       :code => code_path.join("erb.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Haml
step.components.create :title => "Haml", 
                       :name => "haml",
                       :primary_group => true,
                       :info_url => "http://haml-lang.com",
                       :source_url => "http://github.com/nex3/haml",
                       :code => code_path.join("haml.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Mustache
step.components.create :title => "Mustache", 
                       :name => "mustache",
                       :primary_group => true,
                       :info_url => "http://defunkt.github.com/mustache",
                       :source_url => "http://github.com/defunkt/mustache",
                       :code => code_path.join("mustache.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Liquid
step.components.create :title => "Liquid", 
                       :name => "liquid",
                       :primary_group => true,
                       :info_url => "http://www.liquidmarkup.org",
                       :source_url => "http://github.com/tobi/liquid",
                       :code => code_path.join("liquid.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Erector
step.components.create :title => "Erector", 
                       :name => "erector",
                       :primary_group => true,
                       :info_url => "http://erector.rubyforge.org",
                       :source_url => "http://github.com/pivotal/erector",
                       :code => code_path.join("erector.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

