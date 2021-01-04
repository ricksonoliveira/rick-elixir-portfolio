# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trello_tasker,
  ecto_repos: [TrelloTasker.Repo]

# Configures the endpoint
config :trello_tasker, TrelloTaskerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hK9H2Xia9wyL8QMlACbjJHx3vkzcFqIc/XbaSpzjTveqctgVmz8c/XGA7w8UixpK",
  render_errors: [view: TrelloTaskerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TrelloTasker.PubSub,
  live_view: [signing_salt: "7w0uZUVw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :trello_tasker, :trello,
  key: System.get_env("TRELLO_KEY"),
  token: System.get_env("TRELLO_TOKEN")

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
