defmodule HelloWorldWeb.ProductController do
  use HelloWorldWeb, :controller
  require Logger
  import Poison

  alias HelloWorld.Product
  alias HelloWorld.Repo

  def index(conn, _params) do
    data = Repo.all(Product)
      |> encode!()

    send_resp(conn, 200, data)
  end

  def create(conn, _params) do
    data = encode!(conn.body_params)
      |> decode!(as: %Product{})
      |> Repo.insert!()
    send_resp(conn, 201, encode!(data))
  end

  def update(conn, _params) do
    data = Repo.get_by!(Product, id: conn.query_params["id"])
      |> Product.changeset(conn.body_params)
      # postgrex database adapter does not support returning the changes made to the record.
      |> Repo.update!()

    send_resp(conn, 201, encode!(data))
  end

  def delete(conn, _params) do
    data = Repo.get_by!(Product, id: conn.query_params["id"])
      |> Repo.delete!()

    send_resp(conn, 201, encode!(data))
  end
end
