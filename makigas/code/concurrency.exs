
defmodule Concurrency do
  def count(), do: count(0)

  def count(value) do
    new_value = receive do
      {:get, pid} ->
        send(pid, value)
        value

      {:inc} ->
        value + 1

      {:dec} ->
        value - 1

      {:reset} ->
        0
    end

    count(new_value)
  end
end
