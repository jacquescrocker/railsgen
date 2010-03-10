require 'spec_helper'

describe Step do
  
  it "should have 10 steps (from seed data)" do
    Step.count.should == 10
  end
  
  
end