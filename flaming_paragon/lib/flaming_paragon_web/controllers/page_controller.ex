defmodule FlamingParagonWeb.PageController do
  use FlamingParagonWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
