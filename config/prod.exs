use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Blog.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "ZS107D5N8OD/28Oh8SqhEl0GnyukAeky9wcKhFJoBomRg2GTH/W7L3e3JFtK+MTd1C12kg+TZLRjfkShGZQd5Q=="

config :logger, :console,
  level: :info
