Haml.init_rails(binding) if defined?(Haml)

Sass::Plugin.options[:template_location] = {
  Rails.root.join("public", "sass").to_s => Rails.root.join("public", "stylesheets").to_s
}