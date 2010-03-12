class StacksController < ApplicationController
  def landing
    @stacks = Stack.landing_stacks
  end
  
  def edit
    # TODO: find the stack, and set it to "current_stack"
  end
  
  def download
    # TODO: 
    # check if the user agent is nil
    
  end
  
  def show
    
  end
end
