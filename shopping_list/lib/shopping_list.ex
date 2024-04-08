defmodule ShoppingList do
  use GenServer

  # Client behaviors
  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def add(pid, item) do
    GenServer.cast(pid, item)
  end

  def display(pid) do
    GenServer.call(pid, :view)
  end

  # Server behaviors
  def init(cart) do
    {:ok, cart}
  end

  def handle_cast(item, cart) do
    updated_cart = [ item | cart ]
    {:noreply, updated_cart}
  end

  def handle_call(:view, _from, cart) do
    {:reply, cart, cart}
  end
end
