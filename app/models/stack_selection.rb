class StackSelection
  include MongoMapper::EmbeddedDocument
  
  belongs_to :component
  
  def self.from_component(component)
    selection = new
    selection.component = component
    selection
  end
end