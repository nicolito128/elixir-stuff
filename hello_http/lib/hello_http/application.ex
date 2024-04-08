defmodule HelloHttp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  @spec start(any(), any()) :: {:error, any()} | {:ok, pid()}
  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: HelloHttp.Endpoints,
        # Set the port per environment, see ./config/MIX_ENV.exs
        options: [port: get_port()]
      )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloHttp.Supervisor]

    IO.puts "Server running at http://localhost:#{get_port()}/ - Press CTRL+C to exit"
    Supervisor.start_link(children, opts)
  end

  defp get_port(), do: Application.get_env(__MODULE__, :port, 8080)
end
