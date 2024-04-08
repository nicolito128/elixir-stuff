defmodule Rec do
    def factorial(0), do: 1

    def factorial(n) do
        n * factorial(n - 1)
    end
end

IO.inspect "5! = #{Rec.factorial(5)}"