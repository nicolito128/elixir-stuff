defmodule AnonymousFunctions do
  def foo(func) do
    func.(5, 3)
  end
end

IO.inspect AnonymousFunctions.foo(fn a, b -> 2*a*b + a*a + b*b end)

# Using the capture operator
IO.inspect AnonymousFunctions.foo(&rem/2)

speak = &(IO.puts/1)
speak.("Hello with capture operator")
