# Estructuras

defmodule Profile do
  defstruct [:name, :country, :age, food: "Pizza"]
end

defmodule Main do
  def main() do
    p = %Profile{name: "Pepe", country: "Spain", age: 18}
    IO.inspect p
    IO.inspect is_map(p)
    # Mostrando keys
    IO.puts "#{p.name} - #{p.country} - #{p.age}"

    # Podemos romper una estructura
    # Ya no será un Profile como tal
    roto = Map.delete(p, :country)
    IO.inspect roto

    # Podemos re-armar un profile
    fixed = Map.merge(roto, %{country: "Germany"})
    IO.inspect fixed
  end
end

Main.main
