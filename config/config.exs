# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Blog.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "ZS107D5N8OD/28Oh8SqhEl0GnyukAeky9wcKhFJoBomRg2GTH/W7L3e3JFtK+MTd1C12kg+TZLRjfkShGZQd5Q==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Blog.PageController

# Session configuration
config :phoenix, Blog.Router,
  session: [store: :cookie,
            key: "_blog_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
