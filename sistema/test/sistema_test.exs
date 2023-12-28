defmodule SistemaTest do
  use ExUnit.Case
  doctest Sistema

  test "greets the world" do
    assert Sistema.hello() == :world
  end
end
