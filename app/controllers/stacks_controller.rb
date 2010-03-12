class StacksController < ApplicationController
  def landing
    @stacks = Stack.landing_stacks
  end
  
  def download
    # TODO: 
    # check if the user agent is nil
    
  end
  
  def show
    
  end
end
