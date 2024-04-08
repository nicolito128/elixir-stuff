# Conjunto de multiples expresiones.
# Se usan mucho para devolver multiples valores en una función.
x = 5
y = 10
z = 25
tuple = {x, y, z, "hello", 3.14159, :ok}
IO.inspect tuple

# Ex:
divAndRem = fn a, b -> {div(a, b), rem(a, b)} end
IO.inspect divAndRem.(8, 3)
IO.inspect divAndRem.(9, 3)

# Agregando cosas a una tupla
newTuple = Tuple.append({4, 0}, 2) # Tuple.append crea una nueva tupla
IO.inspect newTuple

el = elem(newTuple, 1)
IO.puts "Obteniendo elemento de una tupla: #{el}"