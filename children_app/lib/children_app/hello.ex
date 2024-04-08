defmodule ChildrenApp.Hello do
  use GenServer

  def start_link(:ok) do
    GenServer.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    IO.puts "Hello world"
    {:ok, []}
  end
end
