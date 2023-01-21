# frozen_string_literal: true

Rails.application.reloader.to_prepare do
  Sidekiq.configure_server do |config|
    config.redis = { url: ENV.fetch('REDIS_URL'), id: nil }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: ENV.fetch('REDIS_URL'), id: nil }
  end
end
