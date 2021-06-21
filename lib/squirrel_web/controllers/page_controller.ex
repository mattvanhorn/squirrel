defmodule SquirrelWeb.PageController do
  use SquirrelWeb, :controller

  def show(conn, %{"page" => page}) do
    render(conn, "#{page}.html")
  end
end
