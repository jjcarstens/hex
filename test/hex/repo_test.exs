defmodule Hex.RepoTest do
  use HexTest.Case
  @moduletag :integration

  test "get_package" do
    assert {:ok, {200, _, _}} = Hex.Repo.get_package("hexpm", "postgrex", "")

    assert_raise RuntimeError, "unknown repo \"bad\"", fn ->
      Hex.Repo.get_package("bad", "postgrex", "")
    end
  end
end
