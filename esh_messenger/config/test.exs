import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :chat_app, ChatApp.Repo,
  database: "test.sqlite3",  # SQLite test file
  pool: Ecto.Adapters.SQL.Sandbox


# We don't run a server during test. If one is required,
# you can enable the server option below.
config :esh_messenger, EshMessengerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false

# In test we don't send emails.
config :esh_messenger, EshMessenger.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
