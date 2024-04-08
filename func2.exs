defmodule Taxes do
  def total(price, type) do
    price * (percentage(type) + 1)
  end

  defp percentage(type) do
    cond do
      type == :normal -> 0.21
      type == :reduced -> 0.10
      type == :very_low -> 0.04
      true -> 0
    end
  end
end

IO.inspect Taxes.total(1500, :reduced)
