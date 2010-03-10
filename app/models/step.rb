class Step
  include MongoMapper::Document
  
  key :title, String
  key :description, String
  
  key :order, Integer, :required => true
  
  has_many :components
  
end