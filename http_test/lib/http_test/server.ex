defmodule HttpTest.Server do
  require Logger
  use GenServer

  def start_link(opts \\ []) do
    Logger.info "Server started!"

    GenServer.start_link(__MODULE__, [], opts)
  end

  def init([]) do
    {:ok, nil}
  end
end
