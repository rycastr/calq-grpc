defmodule CalqTest do
  use ExUnit.Case
  doctest Calq

  test "greets the world" do
    assert Calq.hello() == :world
  end
end
