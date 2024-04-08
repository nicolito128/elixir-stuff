defmodule Calculator do
    # add/2
    def add(a, b) do
        IO.puts "Me han pedido sumar #{a} y #{b}"
        a + b
    end
end

IO.inspect Calculator.add(5, 2)