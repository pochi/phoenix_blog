defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres
  require Logger

  def conf do
    parse_url "ecto://pochi:pochi@localhost/phoenix_blog"
  end

  def priv do
    app_dir(:blog, "priv/repo")
  end

  def log({:query, sql}, fun) do
    {time, result} = :timer.tc(fun)
    Logger.info "[QUERY]" <> sql
    result
  end
end