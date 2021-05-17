# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :squirrel,
  ecto_repos: [Squirrel.Repo]

# Configures the endpoint
config :squirrel, SquirrelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q4uJaqr2V9y/4jAQuAB4zhu4j774DhAoIjUzhhcVTbqCOJZGmRoeIwu2HEoyuxHp",
  render_errors: [view: SquirrelWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Squirrel.PubSub,
  live_view: [signing_salt: "tCm41B5I"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
