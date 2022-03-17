defmodule LillyTest do
  use ExUnit.Case
  doctest Lilly

  test "greets the world" do
    assert Lilly.hello() == :world
  end
end
