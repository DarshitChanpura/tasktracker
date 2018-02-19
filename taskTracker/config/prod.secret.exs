use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :taskTracker, TaskTrackerWeb.Endpoint,
  secret_key_base: "yW39ONgo4zW+AtFzn9TDPsCs8pjXdHMq1ThDExh+u06iR7mjJow7BMD/yAbBasJG"

# Configure your database
config :taskTracker, TaskTracker.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "tasktracker_prod",
  pool_size: 15
