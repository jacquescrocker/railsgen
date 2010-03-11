##########################################################################
# Javascript
# - JQuery
# - Prototype (default)
# - MooTools

puts "Creating Javascript Components"

code_path = Rails.root.join("db", "2_js")
step = Step.create :title => "Javascript", 
                   :name => "js", 
                   :order => 2

# jQuery
step.components.create :title => "jQuery", 
                       :name => "jquery",
                       :info_url => "http://jquery.org",
                       :source_url => "http://github.com/jquery/jquery",
                       :code => code_path.join("jquery.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Prototype
step.components.create :title => "Prototype", 
                       :name => "prototype",
                       :in_rails_stack => true,
                       :info_url => "http://www.prototypejs.org",
                       :source_url => "http://github.com/sstephenson/prototype",
                       :code => code_path.join("prototype.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MooTools
step.components.create :title => "MooTools", 
                       :name => "mootools",
                       :info_url => "http://mootools.net",
                       :source_url => "http://github.com/mootools/mootools-core",
                       :code => code_path.join("mootools.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


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
                       :code => code_path.join("jquery", "jqueryui.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# JQuery Tools
step.components.create :addon_group => "jquery",
                       :title => "jQuery Tools", 
                       :name => "jquerytools",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://flowplayer.org/tools/",
                       :source_url => "http://github.com/merbjedi/jquery-tools",
                       :code => code_path.join("jquery", "jquerytools.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# jQuery Form
step.components.create :addon_group => "jquery",
                       :title => "jQuery Form", 
                       :name => "jqueryform",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://malsup.com/jquery/form/",
                       :source_url => "http://github.com/malsup/form",
                       :code => code_path.join("jquery", "jqueryform.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# LiveQuery
step.components.create :addon_group => "jquery",
                       :title => "LiveQuery", 
                       :name => "livequery",
                       :depends_on_components => ["jquery"],
                       :info_url => "http://plugins.jquery.com/project/livequery/",
                       :source_url => "http://github.com/brandonaaron/livequery",
                       :code => code_path.join("jquery", "livequery.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
