OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_AUTH_ID'], ENV['GOOGLE_AUTH_SECRET'], skip_jwt: true
end # need to change key ownership to tyler, using my own google account for development
