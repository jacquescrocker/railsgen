class Step
  include MongoMapper::Document
  
  # displayed title of the step
  key :title, String
  
  # name of the step (used for urls, etc)
  key :name, String
  
  # basic description for the step
  key :description, String
  
  key :order, Integer, :required => true
  
  has_many :components
  
  def to_param
    name
  end
  
end