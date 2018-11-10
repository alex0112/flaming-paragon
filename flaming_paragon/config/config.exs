# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :flaming_paragon,
  ecto_repos: [FlamingParagon.Repo]

# Configures the endpoint
config :flaming_paragon, FlamingParagonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/92zT3NI0QDGRB4VGH6N4ms2F4VbE3msp4gmvno9uu25i554nE5RDSvbG+z9WboR",
  render_errors: [view: FlamingParagonWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FlamingParagon.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
