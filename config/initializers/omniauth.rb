OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'dca44f044ea7569694f0', 'b9d2efa73429f287c75249406aabac99cdf19669'
end