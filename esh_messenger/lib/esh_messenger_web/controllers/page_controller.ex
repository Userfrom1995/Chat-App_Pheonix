defmodule EshMessengerWeb.PageController do
  use EshMessengerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
