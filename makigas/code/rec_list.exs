# Recursividad usando listas
defmodule RecursionListas do
  def double([]), do: []

  def double([head | tail]) do
    [head * 2 | double(tail)]
  end

  def even([]), do: []

  def even([head | tail]) when rem(head, 2) == 0 do
    [head | even(tail)]
  end

  def even([head | tail]), do: even(tail)

  def add([], acc), do: acc

  def add([head | tail], acc), do: add(tail, acc + head)

  def add(list), do: add(list, 0)
end

list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

list |> RecursionListas.double |> IO.inspect
list |> RecursionListas.even |> IO.inspect
list |> RecursionListas.add |> IO.inspect
