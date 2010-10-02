require 'capybara/rails'
require 'capybara/cucumber'
require 'capybara/session'

require 'cucumber/rails/capybara_javascript_emulation' # Lets you click links with onclick javascript handlers without using @culerity or @javascript

# Capybara defaults to XPath selectors rather than Webrat's default of CSS3. In
# order to ease the transition to Capybara we set the default here. If you'd
# prefer to use XPath just remove this line and adjust any selectors in your
# steps to use the XPath syntax.
Capybara.default_selector = :css
# Capybara.javascript_driver = :selenium

# add host helper for capybara
module CapybaraExtensions
  def with_host(host)
    old_host = Capybara.default_host
    Capybara.default_host = host
    yield
    Capybara.default_host = old_host
  end
end

World(CapybaraExtensions)