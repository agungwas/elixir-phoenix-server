defmodule HelloWorld.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :active, :boolean
    field :currency, :string
    field :description, :string
    field :image, :string
    field :name, :string
    field :price, :integer

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description, :image, :price, :currency, :active])
    |> validate_required([:name, :description, :image, :price, :currency, :active])
  end
end
