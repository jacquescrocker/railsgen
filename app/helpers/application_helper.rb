module ApplicationHelper
  def url(name, *args)
    send(:"#{name}_url", *args)
    # url_for :use_route => name, :only_path => true
  end
  
  # provides a slick way to add classes inside haml attribute collections
  # 
  # examples:
  #   %div{add_class("current")} 
  #   #=> adds the "current" class to the div
  #   
  #   %div{add_class("current", :if => current?)} 
  #   #=> adds the "current" class to the div if current? method 
  #
  #   %div{add_class("highlight", :unless => logged_in?)} 
  #   #=> adds the "highlight" class to the div unless logged_in? method returns true
  def add_class(css_class, options = {})
    return {} unless css_class
    
    if options.has_key?(:unless) && !options[:unless]
      return {:class => css_class}
    end
    
    if options.has_key?(:if) && options[:if]
      return {:class => css_class}
    end
    
    if !options.has_key?(:if) and !options.has_key?(:unless)
      {:class => css_class}
    else
      {}
    end
  end
end
