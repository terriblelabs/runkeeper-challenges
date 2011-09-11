BabyTooth.configure do |config|
  config.client_id         = "202dcff028a84cc782d5fb34d3f0d78a"
  config.client_secret     = "3074370d430e4806b09d12ec4b4007d0"
  config.access_token_url  = "https://runkeeper.com/apps/token"
  config.authorization_url = "https://runkeeper.com/apps/authorize"
  config.site              = "http://api.runkeeper.com"
  config.redirect_uri      = "http://localhost:3000/callback"
end