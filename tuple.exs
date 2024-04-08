# A tuple
IO.inspect {1, "Hello", 3.14159, :ok}

# Equals to: fn a, b -> {a / b, rem(a, b)} end
div_rem = &{&1 / &2, rem(&1, &2)}

result = div_rem.(5, 3)
IO.inspect result
