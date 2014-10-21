use Mix.Config

config :phoenix, Blog.Router,
  http: [port: System.get_env("PORT") || 4000],
  debug_errors: true

# Enables code reloading for development
config :phoenix, :code_reloader, true

config :logger,
  backends: [{LoggerFileBackend, :info},
             {LoggerFileBackend, :error}]

config :logger, :info,
  path: "log/info.log",
  level: :info

config :logger, :error,
  path: "log/error.log",
  level: :error