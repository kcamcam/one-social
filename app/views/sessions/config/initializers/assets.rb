# Be sure to restart your server when you modify this file.
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( script.js )
# Rails.application.config.assets.precompile << /\.(?:ttf)\z/
Rails.application.config.assets.precompile += %w( LicensePlate.ttf )
Rails.application.config.assets.precompile += %w( favicon.png )
Rails.application.config.assets.precompile += %w( apple-touch-icon.png )
Rails.application.config.assets.precompile += %w( launch.png )
Rails.application.config.assets.precompile += %w( bootstrap-padding.css )
# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets

# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
