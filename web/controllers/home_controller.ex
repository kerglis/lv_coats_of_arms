defmodule LvCoatsOfArms.HomeController do
  use LvCoatsOfArms.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
