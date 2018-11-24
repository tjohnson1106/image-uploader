defmodule PhotoManagerWeb.PageController do
  use PhotoManagerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
