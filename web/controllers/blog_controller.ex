defmodule Blog.BlogController do

  use Phoenix.Controller
  alias Blog.Blog

  plug :action

  def index(conn, _params) do
    render conn, "index", blogs: Repo.all(Blog)
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, %{"blog" => %{"title" => title, "content" => content}}) do
    blog = %Blog{title: title, content: content}
    blog = Repo.insert(blog)
    render conn, "index", blogs: Repo.all(Blog)
  end
end
