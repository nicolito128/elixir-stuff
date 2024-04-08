defmodule Calculator do
    # add/2
    def add(a, b) do
        a + b
    end

    def subtract(a, b) do
        a - b
    end

    def mult(a, b) do 
        a * b
    end
    
    # No podemos divir entre 0. Podemos controlar el caso utilizando guardas.
    # Es decir, podemos definir una función multiples veces.
    # Podemos hacer que elixir utilice varias funciones a la vez.
    # El orden de las guardas importa.
    def div(_a, b) when b == 0 do
        :undefined
    end

    def div(a, b) do
        a / b
    end
end

IO.inspect Calculator.div(5, 2)
IO.inspect Calculator.div(1, 0)