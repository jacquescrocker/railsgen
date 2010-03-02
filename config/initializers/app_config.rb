if defined?(::AppConfig)
  AppConfig.reload!
else
  ::AppConfig = ApplicationConfig::ConfigBuilder.load_files(
    :paths =>  [Rails.root.join("config", "app_config.yml").to_s],
    :expand_keys => [:javascripts, :stylesheets],
    :root_path => Rails.root.to_s
  )
end
