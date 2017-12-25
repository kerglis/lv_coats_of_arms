defmodule LvCoatsOfArms.County do
  use LvCoatsOfArms.Web, :model

  alias LvCoatsOfArms.Repo
  alias LvCoatsOfArms.County

  schema "counties" do
    field :name, :string
    field :image_path, :string
    timestamps()
  end

  def random(count) do
    Repo.all(County) |> Enum.take_random(count)
  end
end
