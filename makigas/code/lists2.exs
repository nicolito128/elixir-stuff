# Listas

# Concatenando listas
IO.inspect [0, 1, 2] ++ [3, 4, 5]

# Eliminando un elemento de una lista
# Muestra los elementos de la izquierda que no esten en la derecha
IO.inspect [0, 1, 2, 3, 4] -- [2, 3]

# Usando pattern matching para sacar elementos
[ x | _ ] = [0, 1, 2, 3, 4, 5]
IO.inspect x

[ _, _, x | _] = [0, 1, 2, 3, 4, 5]
IO.inspect x

# Utilizando Enum.at
IO.inspect Enum.at(["a", "b", "c", "d"], 2)

# Usando funciones de List
IO.inspect List.insert_at(["a", "b", "c"], 1, "hello")
IO.inspect List.delete_at(["a", "b", "c"], 0)
IO.inspect List.replace_at(["a", "b", "c"], 2, "d")
# Longitud de una lista
IO.inspect length([])
IO.inspect length(["a", "b", "c"])
IO.inspect length([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])