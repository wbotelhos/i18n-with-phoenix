# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :i18n_with_phoenix,
  ecto_repos: [I18nWithPhoenix.Repo]

# Configures the endpoint
config :i18n_with_phoenix, I18nWithPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VykRzKYCB7sdl9K72ZuQN3GbGowvut5MFBmGBnXy6kl+7MLFcfIw8pSjaT8Oe1hd",
  render_errors: [view: I18nWithPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: I18nWithPhoenix.PubSub,
  live_view: [signing_salt: "KZwXCJ/I"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :i18n_with_phoenix, I18nWithPhoenix.Gettext, default_locale: "pt_BR", locales: ~w(pt_BR en)

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
