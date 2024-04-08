# Listas
# Esta no es más que una estructura de una lista enlazada.
list = [1, 2, 3, 4, 5]

head = hd list
tail = tl list
IO.inspect head
IO.inspect tail
IO.inspect hd(tail)
IO.inspect tl(tail)
IO.inspect tl(tl(tail))

# Creando una lista con otra
base = []
# Seteamos la cabeza 1 y la cola es base
uno = [ 1 | base ]
IO.inspect uno

dos = [2 | uno]
IO.inspect dos

# Destructurando listas
# [one, two, three] = [1, 2, 3]
[cabeza | cola ] = [1, 2, 3, 4, 5, 6]
IO.inspect cabeza
IO.inspect cola

# Otra opción
[cabeza1, cabeza2 | cola1 ] = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
IO.inspect cabeza1
IO.inspect cabeza2
IO.inspect cola1