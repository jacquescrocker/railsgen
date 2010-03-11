class Component
  include MongoMapper::Document
  
  # displayed title of the component
  key :title, String, :required => true

  # name of the component (used for urls, etc)
  key :name, :required => true
  
  # basic description of the component
  key :description, String
  
  # where to get more info
  key :info_url, String
  key :source_url, String

  # render code for the actual generator
  key :code, String
  
  # see if this is a default rails component
  key :in_rails_stack, Boolean, :default => true
  
  # define the dependencies (array of names) for the component
  key :depends_on_components, Array

  # define the includes list. sometimes a component is a superset of another, 
  # so if its defined, hide the other one that it already includes
  key :includes_components, Array
  
  # see if the component is an addon to another component
  key :addon_group, String, :default => nil

  # for large lists of components, just group them via this mini_group title
  key :mini_group, String, :default => nil
  
  belongs_to :step

  def to_param
    name
  end

end