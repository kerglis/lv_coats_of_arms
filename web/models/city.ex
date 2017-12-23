defmodule LvCoatsOfArms.City do
  use LvCoatsOfArms.Web, :model

  alias LvCoatsOfArms.Repo
  alias LvCoatsOfArms.City

  schema "cities" do
    field :name, :string
    field :image_path, :string
    timestamps()
  end

  def random(count) do
    Repo.all(City) |> Enum.take_random(count)
  end
end
