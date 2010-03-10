RailsGenerate::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = false
  
  # lets do some h4x0ring!
  class Hassle::Compiler
    def compile
      Rails.logger.error("STARTING Sass::Plugin.options[:template_location]:")
      Rails.logger.error(Sass::Plugin.options[:template_location].inspect)

      normalize
      prepare

      Rails.logger.error("ENDING Sass::Plugin.options[:template_location]:")
      Rails.logger.error(Sass::Plugin.options[:template_location].inspect)

      Sass::Plugin.update_stylesheets
    end
  end
  
  class Hassle
    def initialize(app)
      compiler = Hassle::Compiler.new
      compiler.compile
      
      Rails.logger.error("Loading Rack::Static with")
      Rails.logger.error(":urls => #{compiler.stylesheets.inspect}")
      Rails.logger.error(":root => #{compiler.compile_location}")
      
      @static = Rack::Static.new(app,
                                 :urls => compiler.stylesheets,
                                 :root => compiler.compile_location)
    end
  end
      
  
  config.middleware.use Hassle

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!
end
