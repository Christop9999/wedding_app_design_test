# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( landing.css )
Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( show.css )
Rails.application.config.assets.precompile += %w( dashboard.css )


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
