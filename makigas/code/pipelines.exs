
lista = ["Tom", "John", "Javier", "Milena", "Juliana"]

IO.inspect lista
  |> Enum.reduce(%{}, fn name, acc -> Map.put(acc, name, String.length(name)) end)
  |> Enum.map(fn {k, v} -> {v, k} end)
