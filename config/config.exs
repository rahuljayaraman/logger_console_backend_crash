use Mix.Config

config :logger, :console, metadata: :all

config :logger,
  backends: [
    :console
  ],
  handle_otp_reports: true,
  sync_threshold: 5
