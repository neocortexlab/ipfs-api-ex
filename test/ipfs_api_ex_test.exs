defmodule IPFSApiTest do
  use ExUnit.Case
  doctest IPFSApi

  test "greets the world" do
    assert IPFSApi.hello() == :world
  end
end
