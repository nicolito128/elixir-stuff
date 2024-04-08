# Mapas

# Podemos unir dos mapas
IO.inspect Map.merge(%{a: 1, b: 2}, %{a: 4, c: 3})

# Podemos agregar cosas a un mapa
m = %{a: 1, b: 2}
nuevoM = Map.put(m, :c, 3)
IO.inspect nuevoM

# Borrar
IO.inspect Map.delete(%{f: 2, g: 3, e: 4}, :e)

# Podemos actualizar mapas
p = %{nombre: "Pepe", comida: "Pizza"}
IO.inspect p
IO.inspect %{ p  | nombre: "Juan" }

# Para saber si hay una key
IO.inspect Map.has_key?(p, :comida)
