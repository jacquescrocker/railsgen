##########################################################################
# Testing
# - TestUnit (default)
# - RSpec
# - Shoulda

puts "Creating Testing Components"

code_path = Rails.root.join("db", "3_test")
step = Step.create :name => "test", 
                   :title => "Testing", 
                   :header => "Choose a Testing Library",
                   :order => 3

# TestUnit
step.components.create :title => "TestUnit", 
                       :name => "testunit",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://ruby-doc.org/stdlib/libdoc/test/unit/rdoc/classes/Test/Unit.html",
                       :code => code_path.join("testunit.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# RSpec
step.components.create :title => "RSpec", 
                       :name => "rspec",
                       :primary_group => true,
                       :info_url => "http://rspec.info",
                       :source_url => "http://github.com/dchelimsky/rspec",
                       :code => code_path.join("rspec.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# Shoulda
step.components.create :title => "Shoulda", 
                       :name => "shoulda",
                       :primary_group => true,
                       :info_url => "http://www.thoughtbot.com/projects/shoulda",
                       :source_url => "http://github.com/thoughtbot/shoulda",
                       :code => code_path.join("shoulda.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# TOOLS:
# - Cucumber (all)
# - Capybara (all)
# - Webrat (all)
# - Culerity (capybara)

# cucumber
step.components.create :addon_group => "tools",
                       :title => "Cucumber", 
                       :name => "cucumber",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :info_url => "http://cukes.info",
                       :source_url => "http://github.com/aslakhellesoy/cucumber",
                       :code => code_path.join("tools", "cucumber.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# capybara
step.components.create :addon_group => "tools",
                       :title => "Capybara", 
                       :name => "capybara",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :source_url => "http://github.com/jnicklas/capybara",
                       :code => code_path.join("tools", "capybara.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# webrat
step.components.create :addon_group => "tools",
                       :title => "Webrat", 
                       :name => "webrat",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :source_url => "http://github.com/brynary/webrat",
                       :code => code_path.join("tools", "webrat.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# culerity
step.components.create :addon_group => "tools",
                       :title => "Culerity", 
                       :name => "culerity",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :source_url => "http://github.com/langalex/culerity",
                       :code => code_path.join("tools", "culerity.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# FIXTURES:
# - FactoryGirl (all)
# - FixJour (all)

# factory girl
step.components.create :addon_group => "fixtures",
                       :title => "FactoryGirl", 
                       :name => "factorygirl",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :info_url => "http://thoughtbot.com/projects/factory_girl",
                       :source_url => "http://github.com/thoughtbot/factory_girl",
                       :code => code_path.join("fixtures", "factorygirl.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# fixjour
step.components.create :addon_group => "fixtures",
                       :title => "fixjour", 
                       :name => "fixjour",
                       :depends_on_components => ["testunit", "rspec", "shoulda"],
                       :info_url => "http://nakajima.github.com/fixjour",
                       :source_url => "http://github.com/nakajima/fixjour",
                       :code => code_path.join("fixtures", "fixjour.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

