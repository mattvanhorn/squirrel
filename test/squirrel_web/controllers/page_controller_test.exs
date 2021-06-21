defmodule SquirrelWeb.PageController.AboutTest do
  use SquirrelWeb.ConnCase

  test "There is an 'About' page" do
    conn =
      build_conn()
      |> get("pages/about")

    conn |> response(200)
  end
end
