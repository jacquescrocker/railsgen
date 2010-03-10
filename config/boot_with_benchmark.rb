# Use Bundler (preferred)
begin
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  require 'rubygems'
  require 'bundler'

  puts "Bundler.setup starting"
  
  require 'benchmark'
  time_took = Benchmark.measure do
    Bundler.setup
  end
  puts "Bundler.setup took: #{time_took.real} sec"
end