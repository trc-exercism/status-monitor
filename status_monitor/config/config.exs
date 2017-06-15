# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :status_monitor,
  ecto_repos: [StatusMonitor.Repo]

# Configures the endpoint
config :status_monitor, StatusMonitor.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2Ar4gqp73cUi3HJvbjLMyH6KrhQy/vLQwB22/ONcUrXrXAa60AUrEnAIHfTb5NOv",
  render_errors: [view: StatusMonitor.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StatusMonitor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
