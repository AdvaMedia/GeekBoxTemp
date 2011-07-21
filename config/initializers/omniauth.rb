Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '8vrMFqtHAZVR9TgPJXXPDg', 'qbNy0wJXA6vufdR3UCn4QadzJS4hUFzofgQRGPOEDc'
  provider :facebook, '208993299147060', '6b0a32b5bac3ddc91ca1dc7613c8dec9'
  provider :github, 'saratovsource', '20c1360d7a22d0837503c97e46e8b0f1'
end