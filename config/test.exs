use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :minimal_cards_api, MinimalCardsApiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :minimal_cards_api, MinimalCardsApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "minimal_cards_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
