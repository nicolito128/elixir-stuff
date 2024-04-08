defmodule Math do
  @spec multiply(number(), number()) :: number()
  def multiply(multiplicand, multiplier) do
    multiplicand * multiplier
  end

  @spec division(number(), number()) :: number()
  def division(dividend, divisor) do
    dividend / divisor
  end

  @spec add(number(), number()) :: number()
  def add(addendA, addendB) do
    addendA + addendB
  end

  @spec subtract(number(), number()) :: number()
  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  @spec percentage(number(), number()) :: number()
  def percentage(value, ratio) do
    value * (ratio / 100)
  end
end
