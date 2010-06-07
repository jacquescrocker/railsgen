##########################################################################
# Javascript
# - JQuery
# - Prototype (default)
# - MooTools

puts "Creating Javascript Components"

code_path = Rails.root.join("db", "2_js")
step = Step.create :name => "js", 
                   :title => "Javascript", 
                   :order => 2,
                   :header => "Choose a Javascript Library",
                   :description => "Javascript copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# jQuery
step.components.create :title => "jQuery", 
                       :name => "jquery",
                       :primary_group => true,
                       :info_url => "http://jquery.org",
                       :source_url => "http://github.com/jquery/jquery",
                       :code => code_path.join("jquery.railsgen").read

# Prototype
step.components.create :title => "Prototype", 
                       :name => "prototype",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://www.prototypejs.org",
                       :source_url => "http://github.com/sstephenson/prototype",
                       :code => code_path.join("prototype.railsgen").read

# MooTools
step.components.create :title => "MooTools", 
                       :name => "mootools",
                       :primary_group => true,
                       :info_url => "http://mootools.net",
                       :source_url => "http://github.com/mootools/mootools-core",
                       :code => code_path.join("mootools.railsgen").read


# JQUERY:
# - JQuery UI
# - JQuery Tools
# - JQuery Form
# - LiveQuery

# JQuery UI
step.components.create :addon_group => "jquery",
                       :title => "jQuery UI", 
                       :name => "jqueryui",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://jqueryui.com/",
                       :source_url => "http://jqueryui.com/docs/Subversion",
                       :code => code_path.join("jquery", "jqueryui.railsgen").read

# JQuery Tools
step.components.create :addon_group => "jquery",
                       :title => "jQuery Tools", 
                       :name => "jquerytools",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://flowplayer.org/tools/",
                       :source_url => "http://github.com/merbjedi/jquery-tools",
                       :code => code_path.join("jquery", "jquerytools.railsgen").read

# jQuery Form
step.components.create :addon_group => "jquery",
                       :title => "jQuery Form", 
                       :name => "jqueryform",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://malsup.com/jquery/form/",
                       :source_url => "http://github.com/malsup/form",
                       :code => code_path.join("jquery", "jqueryform.railsgen").read

# LiveQuery
step.components.create :addon_group => "jquery",
                       :title => "LiveQuery", 
                       :name => "livequery",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://plugins.jquery.com/project/livequery/",
                       :source_url => "http://github.com/brandonaaron/livequery",
                       :code => code_path.join("jquery", "livequery.railsgen").read
