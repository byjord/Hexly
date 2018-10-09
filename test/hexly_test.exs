defmodule HexlyTest do
  use ExUnit.Case
  doctest Hexly

  test "greets the world" do
    assert Hexly.hello() == :world
  end
end
