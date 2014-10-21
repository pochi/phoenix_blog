defmodule Blog.BlogsController do
  use Phoenix.Controller
  alias Blog.User

  plug :action

  def index(conn, _params) do
    render conn, "index", users: Repo.all(User)
  end
end
