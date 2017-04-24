# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kaminari_api,
  ecto_repos: [KaminariApi.Repo]

# Configures the endpoint
config :kaminari_api, KaminariApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gy7klJQhTMjzj8gHZ1TYBSp5n5cvjSmBNHwnkZmIBwVB9M2uuOChQWHz0FJgk7Yi",
  render_errors: [view: KaminariApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: KaminariApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
