defmodule LvCoatsOfArms.Repo.Migrations.CreateCity do
  use Ecto.Migration

  def change do
    create table(:cities) do
      add :name, :string
      add :image_path, :string, null: false
      timestamps()
    end

    create unique_index(:cities, [:name])
  end
end
