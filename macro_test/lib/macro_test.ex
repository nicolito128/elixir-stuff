defmodule MacroTest do
  alias MacroTest.Router
  require MacroTest.Router

  Router.get foo do
    IO.puts "Hello world from macro!"
  end

end
