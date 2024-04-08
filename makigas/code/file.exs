if File.exists?("text.txt") do
    {:ok, text} = File.read("text.txt")
    IO.puts text
end

# Leyendo un archivo no existente
IO.inspect File.read("no-exists.txt")