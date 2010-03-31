class StepsController < ApplicationController
  def show
    # get the current step
    @step = Step.where(:name => params[:id]).first

    # get a list of the components
    @components = @step.components.where(:primary_group => true)
  end
end
