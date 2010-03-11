module ApplicationHelper
  def url(name)
    send(:"#{name}_url")
  end
end
