# Be sure to restart your server when you modify this file.

ActiveSupport::Reloader.to_prepare do
  ApiController.renderer.defaults.merge!(
    http_host: 'example.org',
    https: false
  )
end
