module ApplicationHelper
  def url(name, *args)
    send(:"#{name}_url", *args)
    # url_for :use_route => name, :only_path => true
  end
end
