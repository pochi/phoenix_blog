defmodule Blog.User do
  use Ecto.Model

  validate user, name: present()
  validate user, email: present()

  schema "users" do
    field :name, :string
    field :email, :string
  end
end
