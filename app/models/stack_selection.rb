class StackSelection
  include MongoMapper::EmbeddedDocument
  
  belongs_to :component
  belongs_to :step
  
end