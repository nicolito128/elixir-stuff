# Keyword List
kwlist = [a: 1, b: 2, c: 3]
kwlist2 = [{:hola, 1}, {:adios, 2}]
IO.inspect kwlist
IO.inspect kwlist2
IO.inspect kwlist[:c]
IO.inspect kwlist[:noexists]

# La macro 'if' recibe una keyword list
age = 25
message = if age >= 18, do: "Mayor de edad", else: "Menor de edad"
IO.puts message