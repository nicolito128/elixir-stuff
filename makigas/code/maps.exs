# Mapas
# Permiten asociar palabras a valores
# Los mapas no respetan ningun orden

# Estructuras `clave => valor`
map = %{ :primero => "Lunes" }
IO.inspect map

# En un mapa la clave puede ser cualquier tipo de dato
map2 = %{ "a" => 1, "b" => 2, 3 => "c" }
IO.inspect map2
IO.inspect map2["a"]
IO.inspect map2[3]

# Cuando el mapa está compuesto de atomos podemos acceder con el `mapa.clave`
# En caso de que el atomo no exista, devuelve un error en lugar de nil, lo cual nos interesa
IO.inspect map.primero