defmodule Rumbl.User do
  use Rumbl.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps
  end
  alias Rumbl.User
  def new(conn, __params) do
    changeset = User.changeset(%User{})
    render conn, "new.html" , changeset: changeset
  end
end
