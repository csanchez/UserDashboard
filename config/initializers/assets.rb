# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( reset.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( welcome.css )
Rails.application.config.assets.precompile += %w( session.css )
Rails.application.config.assets.precompile += %w( guest_session.css )
Rails.application.config.assets.precompile += %w( guest_dashboard.css )
Rails.application.config.assets.precompile += %w( user_session.css )

Rails.application.config.assets.precompile += %w( modernizr.js )
Rails.application.config.assets.precompile += %w( main.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
