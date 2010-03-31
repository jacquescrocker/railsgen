class StackSelection
  include Mongoid::Document
  
  embedded_in :component, :inverse_of => :selections
  
  def self.from_component(component)
    selection = new
    selection.component = component
    selection
  end
end