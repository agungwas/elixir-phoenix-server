defmodule HelloWorldWeb.Router do
  use HelloWorldWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloWorldWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/product", HelloWorldWeb do

    get "/", ProductController, :index
    post "/", ProductController, :create
    put "/", ProductController, :update
    delete "/", ProductController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloWorldWeb do
  #   pipe_through :api
  # end
end
