class StepsController < ApplicationController
  def show
    # get the current step
    @step = Step.first(:name => params[:id])

    # get a list of the components
    @components = @step.components.all(:primary_group => true)
  end
end
