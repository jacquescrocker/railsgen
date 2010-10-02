# load in all the factories
Dir["#{Rails.root}/db/factories/**/*_factory.rb"].each {|f| require f}