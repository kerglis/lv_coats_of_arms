defmodule LvCoatsOfArms.SharedView do
  use LvCoatsOfArms.Web, :view

  def city_class(active_tab) do
    if active_tab == "cities" do
      "active"
    end
  end

  def county_class(active_tab) do
    if active_tab == "counties" do
      "active"
    end
  end

  def reload_link(active_tab, conn) do
    case active_tab do
      "counties" ->
        county_path(conn, :index)
      _ ->
        home_path(conn, :index)
    end
  end
end
