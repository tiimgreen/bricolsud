# Be sure to restart your server when you modify this file.

### Rename '_bricolsud_session' ###

if Rails.env.production?
  Appname::Application.config.session_store :cookie_store, :key => '_cookie_name', domain: :all
else
  Appname::Application.config.session_store :cookie_store, :key => '_cookie_name', domain: '.local.dev'
end
