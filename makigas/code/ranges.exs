# Elixir nos proporciona los rangos, que nos permiten escribir listas consecutivas de numeros

listA = 1..15

listA
  |> IO.inspect
  |> Enum.filter(fn x -> rem(x, 5) == 0 end)
  |> IO.inspect

listA
  |> IO.inspect
  |> Enum.find(fn x -> rem(x, 2) == 0 end)
  |> IO.inspect

listB = 1..100
# Usando streams para devolver valores de a poco
listB
  |> IO.inspect
  |> Stream.map(&IO.inspect/1)
  |> Enum.take(5)
