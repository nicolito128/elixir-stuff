defmodule GCalc do
  use GenServer

  def add(pid, x, y) do
    GenServer.call(pid, {:add, x, y})
  end

  def start_link() do
    GenServer.start_link(GCalc, nil, name: GCalc.Calculator)
  end

  def init(param) do
    IO.puts "GenCalc started!"
    IO.inspect param

    {:ok, %{counter: 0}}
  end

  def handle_call({:add, n, m}, _from, %{counter: value}) do
    result = n + m
    {:reply, result, %{counter: value + 1}}
  end

  def handle_info(msg, %{counter: value}) do
    IO.puts "Message received: #{msg}"

    {:noreply, %{counter: value + 1}}
  end
end
