##########################################################################
# Web Server
# - Mongrel
# - WebBrick (default)
# - Thin
# - Unicorn

puts "Creating Web Server Components"

code_path = Rails.root.join("db", "4_server")
step = Step.create :name => "server", 
                   :title => "Web Server", 
                   :order => 4,
                   :header => "Choose a Web Server",
                   :description => "Web server copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# Mongrel
step.components.create :title => "Mongrel", 
                       :name => "mongrel",
                       :primary_group => true,
                       :source_url => "http://github.com/fauna/mongrel",
                       :code => code_path.join("mongrel.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# WebBrick
step.components.create :title => "WebBrick", 
                       :name => "webrick",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://www.ruby-doc.org/stdlib/libdoc/webrick/rdoc/",
                       :code => code_path.join("webrick.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# Unicorn
step.components.create :title => "Unicorn", 
                       :name => "unicorn",
                       :primary_group => true,
                       :info_url => "http://raa.ruby-lang.org/project/unicorn/",
                       :source_url => "http://github.com/defunkt/unicorn",
                       :code => code_path.join("unicorn.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Thin
step.components.create :title => "Thin", 
                       :name => "thin",
                       :primary_group => true,
                       :info_url => "http://code.macournoyer.com/thin/",
                       :source_url => "http://github.com/macournoyer/thin/",
                       :code => code_path.join("thin.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

