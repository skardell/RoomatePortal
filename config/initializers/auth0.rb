Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
      :auth0,
      'KfaCYaaiiCAvVYJ3KVJyj3EZTzK8a0YY',
      'WscDb4kapVpr0-ip2exSkjZlRWZRopmlUCiITk5Y0hXtEaAHW0CYFnV8fiTcESnf',
      'cchoi.auth0.com',
      callback_path: "/auth/auth0/callback"
  )
end