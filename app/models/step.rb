class Step
  include Mongoid::Document
  
  # displayed title of the step
  field :title, :type => String
  
  # displayed on the top of the page
  field :header, :type => String
  
  # name of the step (used for urls, etc)
  field :name, :type => String
  
  # basic description for the step
  field :description, :type => String
  
  field :order, :type => Integer
  validates_presence_of :order
  
  has_many_related :components
  
  def to_param
    name
  end
  
  def self.list
    order_by([[:order, :asc]])
  end
end