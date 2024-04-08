defmodule BasicNumbersTest do
  use ExUnit.Case
  doctest BasicNumbers

  test "greets the world" do
    assert BasicNumbers.hello() == :world
  end
end
