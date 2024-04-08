defmodule Mod do
    def foo(false, _), do: IO.puts("La expresión evalua a falso.") 
    
    def foo(true, [{atom, value}]) when is_atom(atom) do
        IO.inspect value
    end

    def foo(true, _), do: IO.puts("El segundo parametro no es keyword list")
end

Mod.foo 3.14 < 2.17, value: 0
Mod.foo 5 > 2, value: 1
Mod.foo 10 == 10, 2