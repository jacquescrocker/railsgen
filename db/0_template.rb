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
                   :order => 0,
                   :header => "Choose a Templating Library", 
                   :description => "Templating library copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# ERB
step.components.create :title => "ERB", 
                       :name => "erb",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://ruby-doc.org/stdlib/libdoc/erb/rdoc/classes/ERB.html",
                       :tagline => "default rails .erb template format using Erubis",
                       :code => code_path.join("erb.railsgen").read

# Haml
step.components.create :title => "Haml", 
                       :name => "haml",
                       :primary_group => true,
                       :info_url => "http://haml-lang.com",
                       :source_url => "http://github.com/nex3/haml",
                       :tagline => "the world's greatest templating language -Hampton",
                       :code => code_path.join("haml.railsgen").read

# Mustache
step.components.create :title => "Mustache", 
                       :name => "mustache",
                       :primary_group => true,
                       :info_url => "http://defunkt.github.com/mustache",
                       :source_url => "http://github.com/defunkt/mustache",
                       :code => code_path.join("mustache.railsgen").read

# Liquid
step.components.create :title => "Liquid", 
                       :name => "liquid",
                       :primary_group => true,
                       :info_url => "http://www.liquidmarkup.org",
                       :source_url => "http://github.com/tobi/liquid",
                       :code => code_path.join("liquid.railsgen").read

# Erector
step.components.create :title => "Erector", 
                       :name => "erector",
                       :primary_group => true,
                       :info_url => "http://erector.rubyforge.org",
                       :source_url => "http://github.com/pivotal/erector",
                       :code => code_path.join("erector.railsgen").read

# HAML Addons:
# - compass

# carrier_wave
step.components.create :addon_group => "haml",
                       :title => "Compass", 
                       :name => "compass",
                       :depends_on_components => ["haml"],
                       :info_url => "http://compass-style.org",
                       :source_url => "http://github.com/chriseppstein/compass",
                       :code => code_path.join("haml", "compass.railsgen").read
