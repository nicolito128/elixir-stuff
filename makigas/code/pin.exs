# El operador pin hace que al matchear una variable
# no pueda ser distinto a su valor original.

y = 5
IO.puts y
y = 2
IO.puts y

# Usando el operador pin
^x = 4
IO.puts x
# ^x = 4 -> MatchError
