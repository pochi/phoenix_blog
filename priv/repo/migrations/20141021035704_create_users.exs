defmodule Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def up do
    "CREATE TABLE users(id serial primary key, name varchar(50), email varchar(50))"
  end

  def down do
    "DROP TABLE users"
  end
end
