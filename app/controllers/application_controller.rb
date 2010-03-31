class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  helper_method :current_stack, :current_stack!
  
  def current_stack
    @current_stack ||= begin
      Stack.where(:_id => session[:stack_id])
    end
  end
  
  def current_stack!
    unless current_stack
      @current_stack = Stack.create
      session[:stack_id] = @current_stack.id
    end
    current_stack
  end
end
