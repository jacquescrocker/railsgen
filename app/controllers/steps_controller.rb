class StepsController < ApplicationController
  def show
    # todo: find labeled step (by name)
    # debugger
    @step = Step.first(:name => params[:id])
    
  end
end
