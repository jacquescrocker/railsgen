# Use Bundler (preferred)
begin
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  require 'rubygems'
  require 'bundler'

  puts "Bundler.setup starting"
  require 'ruby-prof'
  
  RubyProf.start
  
  # code to profile here
  Bundler.setup
  
  result = RubyProf.stop
  
  printer = RubyProf::CallTreePrinter.new(result)
  File.open("bundler_results.calltree", "w") do |file|
    printer.print(file, 0)
  end
  
  exit
end