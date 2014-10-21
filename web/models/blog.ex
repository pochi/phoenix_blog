defmodule Blog.Blog do
  use Ecto.Model

  validate blog, title: present()
  validate blog, content: present()

  schema "blogs" do
    field :title, :string
    field :content, :string
  end
end
