class Stack
  include MongoMapper::Document
  
  key :title, String
  
  # used for urls http://my-app.railsgen.com
  # or http://railsgen.com/my-app
  key :name, String
  # TODO: add url validator on name
  
  timestamps!
  
  
end