# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

#Css
Rails.application.config.assets.precompile += %w(huong-style.css)
Rails.application.config.assets.precompile += %w(style.css)
Rails.application.config.assets.precompile += %w(colorbox.css)
Rails.application.config.assets.precompile += %w(settings.css)
Rails.application.config.assets.precompile += %w(animate.css)
Rails.application.config.assets.precompile += %w(font-awesome.min.css)

#Js
Rails.application.config.assets.precompile += %w(jquery.js)
Rails.application.config.assets.precompile += %w(jquery.bxslider.min.js)
Rails.application.config.assets.precompile += %w(jquery-ui-1.10.4.custom.min.js)
Rails.application.config.assets.precompile += %w(jquery.colorbox-min.js)
Rails.application.config.assets.precompile += %w(Animo.js)
Rails.application.config.assets.precompile += %w(dug.js)
Rails.application.config.assets.precompile += %w(scripts.min.js)
Rails.application.config.assets.precompile += %w(jquery.themepunch.tools.min.js)
Rails.application.config.assets.precompile += %w(jquery.themepunch.revolution.min.js)
Rails.application.config.assets.precompile += %w(waypoints.min.js)
Rails.application.config.assets.precompile += %w(wow.min.js)
Rails.application.config.assets.precompile += %w(custom2    .js)