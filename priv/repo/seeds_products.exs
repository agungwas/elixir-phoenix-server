# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     HelloWorld.Repo.insert!(%HelloWorld.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias HelloWorld.Repo
alias HelloWorld.Product

Repo.insert! %Product{
  active: false,
  currency: "idr",
  description: "This is product",
  image: "image.jpg",
  name: "Product from seeders 1",
  price: 100,
}

Repo.insert! %Product{
  active: false,
  currency: "idr",
  description: "This is product",
  image: "image.jpg",
  name: "Product from seeders 2",
  price: 100,
}

Repo.insert! %Product{
  active: false,
  currency: "idr",
  description: "This is product",
  image: "image.jpg",
  name: "Product from seeders 3",
  price: 100,
}
