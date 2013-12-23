Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '657297557654145', '375c7b6f819b660dae6757f3d42cdb59'
end