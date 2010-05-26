RailsGenerate::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = false

  config.action_mailer.default_url_options = { :host => 'railsgen.com' }

  # lets do some h4x0ring!
  class Hassle::Compiler
    def css_location(path)
      expanded = File.expand_path(path)
      public_dir = File.join(File.expand_path(Dir.pwd), "public")

      File.expand_path(compile_location(expanded.gsub(public_dir, '')))
    end

    def normalize
      template_location = options[:template_location]

      if template_location.is_a?(Hash)
        template_location.each_pair do |input, output|
          template_location[input] = css_location(output)
        end
      elsif template_location.is_a?(Array)
        options[:template_location] = template_location.to_a.map do |input, output|
          [input, css_location(output)]
        end
      else
        default_location = File.join(options[:css_location], "sass")
        options[:template_location] = {default_location => css_location(default_location)}
      end
    end
  end

  config.middleware.use Hassle

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!


  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

end
