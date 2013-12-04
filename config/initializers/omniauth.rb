OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '566428166769731', 'ad23507458195a270fc50643e7ff2f79'
end
