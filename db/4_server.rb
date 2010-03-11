##########################################################################
# Web Server
# - Mongrel
# - WebBrick (default)
# - Thin
# - Unicorn

puts "Creating Web Server Components"

code_path = Rails.root.join("db", "4_server")
step = Step.create :title => "Web Server", 
                   :name => "server", 
                   :order => 4

# Mongrel
step.components.create :title => "Mongrel", 
                       :name => "mongrel",
                       :source_url => "http://github.com/fauna/mongrel",
                       :code => code_path.join("mongrel.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# WebBrick
step.components.create :title => "WebBrick", 
                       :name => "webrick",
                       :in_rails_stack => true,
                       :info_url => "http://www.ruby-doc.org/stdlib/libdoc/webrick/rdoc/",
                       :code => code_path.join("webrick.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# Unicorn
step.components.create :title => "Unicorn", 
                       :name => "unicorn",
                       :info_url => "http://raa.ruby-lang.org/project/unicorn/",
                       :source_url => "http://github.com/defunkt/unicorn",
                       :code => code_path.join("unicorn.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Thin
step.components.create :title => "Thin", 
                       :name => "thin",
                       :info_url => "http://code.macournoyer.com/thin/",
                       :source_url => "http://github.com/macournoyer/thin/",
                       :code => code_path.join("thin.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

