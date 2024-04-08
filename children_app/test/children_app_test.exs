defmodule ChildrenAppTest do
  use ExUnit.Case
  doctest ChildrenApp

  test "greets the world" do
    assert ChildrenApp.hello() == :world
  end
end
