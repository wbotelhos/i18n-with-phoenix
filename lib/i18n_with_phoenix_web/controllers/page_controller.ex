defmodule I18nWithPhoenixWeb.PageController do
  use I18nWithPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
