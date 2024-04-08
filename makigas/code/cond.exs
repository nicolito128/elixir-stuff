# cond permise hacer una tabla de condiciones, es similar a un switch...case de otros lenguajes.
lluvia = 110
mensaje = cond do
  lluvia == 0 -> "No ha llovido."
  lluvia < 30 -> "Ha llovido un poco."
  lluvia < 60 -> "Ha llovido un rato."
  lluvia < 90 -> "Ha llovido bastante."
  true -> "Ha llovido."
end

IO.puts mensaje
