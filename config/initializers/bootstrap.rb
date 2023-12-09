

Rails.application.config.assets.paths += Gem.loaded_specs["bootswatch"].load_paths

# config/initializers/bootswatch.rb

# Assuming `Cerulean` is the theme you want to use
theme_name = "Cerulean"

# Construct the full path to the theme's stylesheet
BOOTSWATCH_CERULEAN_STYLESHEET_PATH = File.join(bootswatch_theme_path, theme_name, "bootstrap.min.css")

# Now BOOTSWATCH_CERULEAN_STYLESHEET_PATH can be used throughout your application
