module HelloThere
  module TestHelpers
    def current_user
      # make this more robust (or something)
      User.first
    end

    def wait_conditionally_until
      if page.driver.wait?
        page.wait_until do
          begin
            yield
          rescue Selenium::WebDriver::Error::WebDriverError => e
            # do nothing - continue to wait for timeout
          end
        end
      else
        yield
      end
    end

  end
end


World(HelloThere::TestHelpers)