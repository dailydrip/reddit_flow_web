# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :reddit_flow_web,
  ecto_repos: [RedditFlowWeb.Repo]

# Configures the endpoint
config :reddit_flow_web, RedditFlowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EX9V4cpd8tGe+NXmmHsZa8Gb+nUxSi+pO5Dve00vqmKc8Kty2561iKyYY97kpsr3",
  render_errors: [view: RedditFlowWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RedditFlowWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
