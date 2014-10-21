defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://pochi:pochi@localhost/phoenix_blog"
  end

  def priv do
    app_dir(:blog, "priv/repo")
  end
end