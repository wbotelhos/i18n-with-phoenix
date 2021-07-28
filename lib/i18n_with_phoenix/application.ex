defmodule I18nWithPhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      I18nWithPhoenix.Repo,
      # Start the Telemetry supervisor
      I18nWithPhoenixWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: I18nWithPhoenix.PubSub},
      # Start the Endpoint (http/https)
      I18nWithPhoenixWeb.Endpoint
      # Start a worker by calling: I18nWithPhoenix.Worker.start_link(arg)
      # {I18nWithPhoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: I18nWithPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    I18nWithPhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
