defmodule Mod do
    def call(func) do
        func.(5, 3)
    end
end

IO.inspect Mod.call(fn a, b -> (a * b) + 1 end)

# Capturar una función
IO.inspect Mod.call(&rem/2)

# Podemos capturar otras funciones y utilizarlas
cut = &String.trim/1
IO.puts cut.("\nRECORTANDO\n")
