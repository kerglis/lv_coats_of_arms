defmodule LvCoatsOfArms.HomeController do
  use LvCoatsOfArms.Web, :controller

  alias LvCoatsOfArms.City

  def index(conn, _params) do
    cities = City.random(4)
    [random_city] = Enum.take_random(cities, 1)

    render conn, "index.html",
            cities: cities,
            random_city: random_city,
            active_tab: "cities"
  end
end
