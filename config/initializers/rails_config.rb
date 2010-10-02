# add local config path
local_config_path = Rails.root.join("config").join("settings").join("local.yml")
Settings.add_source!(RailsConfig::Sources::YAMLSource.new(local_config_path)) if local_config_path.file?

# reload settings
Settings.reload!