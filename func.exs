defmodule Math do
  def square(x) do
    x*x
  end

  def even?(x) do
    rem(x, 2) == 0
  end

  def odd?(x) do
    !(even? x)
  end

  # Using guards
  def divide(_num, den) when den == 0 do
    :inf
  end

  def divide(num, den) do
    num / den
  end
end

square_result = Math.square(8)
even_result = Math.even?(10)
odd_result = Math.odd?(7)
divide_result = Math.divide(2, 0)

IO.inspect("Square of 8: #{square_result}")
IO.inspect("10 is even: #{even_result}")
IO.inspect("7 is odd: #{odd_result}")
IO.inspect("2/0 result: #{divide_result}")
