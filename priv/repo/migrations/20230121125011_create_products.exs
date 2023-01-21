defmodule HelloWorld.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :string
      add :image, :string
      add :price, :integer
      add :currency, :string
      add :active, :boolean

      timestamps()
    end

  end
end
