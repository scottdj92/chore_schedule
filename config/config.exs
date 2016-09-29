# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chore_schedule,
  ecto_repos: [ChoreSchedule.Repo]

# Configures the endpoint
config :chore_schedule, ChoreSchedule.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p/Dw7kgjG8IRomdgY2eJSEvJ2+UNV9qObBRW34QTZR4YpKr36I/f67kWLtYLCtSu",
  render_errors: [view: ChoreSchedule.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChoreSchedule.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
