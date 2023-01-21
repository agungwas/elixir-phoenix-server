defmodule HelloWorldWeb.ProductController do
  use HelloWorldWeb, :controller
  require Logger

  alias HelloWorld.Product
  alias HelloWorld.Repo

  def index(conn, _params) do
    data = Repo.all(Product) |> Poison.encode!()
    Logger.info(data)

    send_resp(conn, 200, data)
  end
end
