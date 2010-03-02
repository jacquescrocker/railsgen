class Component
  include MongoMapper::Document
  
  key :title, String
  key :description, String
  timestamps!
  
  
  
end