defmodule LvCoatsOfArms.Repo.Migrations.CreateCounty do
  use Ecto.Migration

  def change do
    create table(:counties) do
      add :name, :string
      add :image_path, :string, null: false
      timestamps()
    end

    create unique_index(:counties, [:name])
  end
end
