use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :status_monitor, StatusMonitor.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :status_monitor, StatusMonitor.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "status_monitor_test",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox
