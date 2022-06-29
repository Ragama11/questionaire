defmodule Questionaire.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :full_name, :string
    field :msisdn, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:full_name, :email, :msisdn, :password])
    |> validate_required([:full_name, :email, :msisdn, :password])
  end
end
