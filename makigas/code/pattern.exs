defmodule Mod do
    def foo(:ok, _str) do
        IO.puts "Me has pasado el atomo 'ok'"
    end

    def foo(_atom, str) do
        IO.puts str
    end
end

defmodule Calculator do
    def div(_a, 0) do
        :undefined
    end

    def div(a, b) when is_number(a) and is_number(b) do
        a / b
    end
end

Mod.foo(:ok, "hi")
Calculator.div(1, "2")