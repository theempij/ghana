Raven.configure do |config|
  config.environments = %w[ production staging ]
  config.dsn = 'https://9fcbf2df8aac47f3a107e8e1a65c1f2f@o379868.ingest.sentry.io/5638339'
  config.tags = { environment: Rails.env }
  config.release = RELEASE_VERSION

  # # Do this to send POST data
  # config.processors -= [Raven::Processor::PostData]

  # # Do this to send cookies by default
  # config.processors -= [Raven::Processor::Cookies]
end


Sentry.init do |config|

  config.breadcrumbs_logger = [:active_support_logger]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end