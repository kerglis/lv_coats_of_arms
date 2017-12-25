defmodule LvCoatsOfArms.CountyController do
  use LvCoatsOfArms.Web, :controller

  alias LvCoatsOfArms.County

  def index(conn, _params) do
    counties = County.random(4)
    [random_county] = Enum.take_random(counties, 1)

    render conn, "index.html",
            counties: counties,
            random_county: random_county,
            active_tab: "counties"
  end
end
