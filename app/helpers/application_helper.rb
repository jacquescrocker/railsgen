module ApplicationHelper
  def url(name, *args)
    send(:"#{name}_url", *args)
  end
end
