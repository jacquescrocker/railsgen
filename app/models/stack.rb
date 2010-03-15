class Stack
  include MongoMapper::Document
  
  # used for urls http://my-app.railsgen.com
  # or http://railsgen.com/my-app
  key :name, String
  # TODO: add url validator on name
  
  key :title, String
  
  key :generated, Boolean, :default => false
  key :number, Integer
  
  # handles which stacks are added to the front page
  key :landing_order, Integer
  
  # IDEA: Allow users to give the stack a title
  # key :title, String
  
  many :stack_selections

  # store when stuff was created, etc
  timestamps!
  
  # stacks can be found by name, number, or id
  def to_param
    name || number || id.to_s
  end

  def generate!
    # first find the top #
    self.number = Stack.count+1 if self.number.blank?
    self.save!
  end
  
  def components
    stack_selections.map(&:component)
  end

  # adds a specific component
  def select_component(component)
    # make sure its not already added
    existing = components.map(&:name)
    return if existing.include?(component.name)
    
    # otherwise add it
    self.stack_selections << StackSelection.from_component(component)
  end
  
  # TODO:
  # generate the rails app template string
  def generate_template
    # TODO: loop through the components (from stack_selections)
    # 
    ""
  end
  
  # query helpers
  
  def self.landing_stacks
    all(:landing_order => {:$gt => 1}, :order => [:landing_order.desc])
  end
  
end