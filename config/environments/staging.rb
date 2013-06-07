# coding: utf-8
Sten3::Application.configure do

#  require 'ehcache'
#  EHCACHE = Ehcache::CacheManager.new.cache

 # Rails4
 config.eager_load = true
 # -config.threadsafe!

  config.cache_classes = false
  #config.cache_store = :file_store, "/tmp/cache"
  # config.cache_store = :memory_store
  # config.cache_store = :ehcache_store
  # config.cache_store = :torque_box_store
  # config.cache_store = :mem_cache_store #:compressed_mem_cache_store
  config.cache_store = :dalli_store, { expires_in: 1.hour, compress: false }

  # Compress JavaScripts and CSS
  config.assets.compress = true
  #config.assets.js_compressor  = :uglifier
  #config.assets.css_compressor = :scss

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = 'X-Sendfile'

  config.serve_static_assets = true

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Show full error reports and disable caching
  config.consider_all_requests_local = true

  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :notify  #:log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Devise
  config.action_mailer.default_url_options = { :host => 'localhost:3002' }
  config.action_mailer.default :charset => "utf-8"

  #config.threadsafe!

end
