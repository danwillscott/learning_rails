# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( materialize.css )
Rails.application.config.assets.precompile += %w( jquery-3.1.1.min.js )
Rails.application.config.assets.precompile += %w( materialize.js )
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf)
Rails.application.config.assets.paths('app', 'assets', 'fonts', 'fonts/roboto')
# Rails.application.config.assets.paths('app', 'assets', 'fonts')
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
