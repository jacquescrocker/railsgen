class Stack
  include MongoMapper::Document
  
  # used for urls http://my-app.railsgen.com
  # or http://railsgen.com/my-app
  key :name, String
  # TODO: add url validator on name
  
  # IDEA: Allow users to give the stack a title
  # key :title, String
  
  many :stack_selections

  def to_param
    name
  end

  # store when stuff was created, etc
  timestamps!
end