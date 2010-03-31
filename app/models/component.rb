class Component
  include Mongoid::Document
  
  # displayed title of the component
  field :title, :type => String
  validates_presence_of :title

  # name of the component (used for urls, etc)
  field :name, :type => String
  validates_presence_of :name
  
  field :version, :type => String
  
  # tagline
  field :tagline, :type => String
  
  # expanded description of the component
  field :description, :type => String

  # sample code
  field :sample, :type => String
  
  # where to get more info
  field :info_url, :type => String
  field :source_url, :type => String

  field :comments_count, :type => Integer, :default => 0

  # render code for the actual generator
  field :code, :type => String
  
  # see if this is a default rails component
  field :in_rails_stack, :type => Boolean, :default => true
  
  # define the dependencies (array of names) for the component
  field :depends_on_components, :type => Array

  # define the includes list. sometimes a component is a superset of another, 
  # so if its defined, hide the other one that it already includes
  field :includes_components, :type => Array
  
  # see if the component is in the primary
  field :primary_group, :type => Boolean, :default => false
  
  # see if the component is an addon to another component
  field :addon_group, :type => String, :default => nil

  # for large lists of components, just group them via this mini_group title
  field :mini_group, :type => String, :default => nil
  
  belongs_to_related :step

  def to_param
    name
  end

end