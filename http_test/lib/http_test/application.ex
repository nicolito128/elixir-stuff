defmodule HttpTest.Application do
  require Logger
  use Application

  def start(_type, _args) do
    children = [HttpTest.Server]

    opts = [strategy: :one_for_one, name: HttpTest.Supervisor]

    Logger.info "Application started succesfully!"
    Supervisor.start_link(children, opts)
  end
end
