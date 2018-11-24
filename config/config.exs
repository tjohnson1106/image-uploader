# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :photo_manager,
  ecto_repos: [PhotoManager.Repo]

# Configures the endpoint
config :photo_manager, PhotoManagerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Wf7ZHSe4XDF0dVn8mpYHh13LnCbn74qJ51m+cRU/J0MD6D+ebZ1Sr8KWEbNbMMW5",
  render_errors: [view: PhotoManagerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhotoManager.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
