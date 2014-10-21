defmodule Repo.Migrations.CreateBlogs do
  use Ecto.Migration

  def up do
    "CREATE TABLE blogs(id serial primary key, title varchar(100), content varchar(250))"
  end

  def down do
    "DROP TABLE blogs"
  end
end
