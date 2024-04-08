defmodule ChildrenApp.Application do
  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {ChildrenApp.Hello, :ok},
      {Plug.Cowboy, scheme: :http, plug: ChildrenApp.Endpoint, port: 4040}
    ]
    opts = [strategy: :one_for_one, name: ChildrenApp.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
end
