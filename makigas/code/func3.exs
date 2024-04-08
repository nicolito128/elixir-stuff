# Destructuring

defmodule Func3 do
    def print2({:ok, x}) do
        IO.puts "Todo fue bien: #{x}"
    end

    def print2({:error, _}) do
        IO.puts "Algo ha salido mal..."
    end
end

Func3.print2 {:ok, "Hi!"}
Func3.print2 {:error, "ohno"}