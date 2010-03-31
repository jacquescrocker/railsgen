class Stack
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # used for urls http://my-app.railsgen.com
  # or http://railsgen.com/my-app
  field :name, :type => String
  # TODO: add url validator on name
  
  field :title, :type => String
  
  field :generated, :type => Boolean, :default => false
  field :number, :type => Integer
  
  # handles which stacks are added to the front page
  field :landing_order, :type => Integer
  
  # IDEA: Allow users to give the stack a title
  # field :title, String
  
  embeds_many :stack_selections

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
    where(:landing_order => {:$gt => 1}).order_by([[:landing_order, :desc]])
  end
  
end