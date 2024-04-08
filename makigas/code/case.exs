# Utilizamos el case para matchear expresiones
exp = nil

message = case exp do
    {:ok, x} when is_number(x) -> "Ha dicho #{x}"
    {:ok, y} -> "Ha resuelto correctamente con #{y}"
    {:error, _} -> "No ha resuelto bien"
    _ -> "Matchea a cualquier cosa"
end

IO.puts message