# Condicional que evalua el negativo. Si lo que evalua es falso entonces entra al bloque.
isAdmin = false;
unless isAdmin do
  IO.puts "No es admin."
else
  IO.puts "Sí es admin."
end

isMod = true
msg = unless isMod, do: "No es moderador", else: "Sí es moderador"

IO.puts msg
