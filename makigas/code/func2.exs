defmodule Taxes do
    def calc(price, type) do
        Taxes.percentage(type) * price
    end

    # Funciones privadas
    # No pueden utilizarse fuera del modulo.
    defp percentage(type) do
        cond do
            type == :normal -> 0.21
            type == :less -> 0.10
            type == :superless -> 0.04
            true -> 0.21
        end
    end
end

IO.inspect Taxes.calc(10, :normal)
# IO.inspect Taxes.percentage(:less) -> ERROR